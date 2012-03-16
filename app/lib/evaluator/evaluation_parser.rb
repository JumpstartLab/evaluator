module Evaluator
  class EvaluationParser

    def parse(evaluation_code, file_name=__FILE__, lineno=__LINE__+1)
      ActiveRecord::Base.transaction do
        instance_eval evaluation_code, file_name, lineno
      end
    end

    def evaluation(title, metadata={}, &sections)
      evaluation = Evaluation.new(title: title, metadata: metadata)

      section_parser = SectionParser.new(evaluation)
      section_parser.parse(&sections)

      evaluation.save!
    end

    def peer_evaluation(title, metadata={}, &sections)
      evaluation = Evaluation.new(title: title, metadata: metadata, peer: true)

      section_parser = SectionParser.new(evaluation)
      section_parser.parse(&sections)

      evaluation.save!
    end

    def instructor_evaluation(title, metadata={}, &sections)
      evaluation = Evaluation.new(title: title, metadata: metadata, peer: true, instructor: true)

      section_parser = SectionParser.new(evaluation)
      section_parser.parse(&sections)

      evaluation.save!

      Person.instructors.each do |instructor|
        Person.students.each do |student|
          evaluation.responses.create(started_at: Time.zone.now, evaluator: instructor, evaluatee: student)
        end
      end
    end

  end

  class SectionParser
    attr_reader   :evaluation
    attr_accessor :current_display_order

    def initialize(evaluation)
      @evaluation            = evaluation
      @sections              = []
      @current_display_order = 1
    end

    def parse(&sections)
      instance_eval(&sections)
    end

    def section(title, &questions)
      section = Section.new(title: title, display_order: current_display_order)

      question_parser = QuestionParser.new(section)
      question_parser.parse(&questions)

      evaluation.sections << section
      self.current_display_order += 1
    end

  end

  class QuestionParser
    attr_reader   :section
    attr_accessor :current_display_order,
                  :current_metadata,
                  :current_text

    def initialize(section)
      @current_display_order = 1
      @section               = section
    end

    def parse(&questions)
      instance_eval(&questions)
    end

    def question(text, metadata={}, &actual_question)
      self.current_text     = text
      self.current_metadata = metadata
      parse(&actual_question)
    end

    def free_response(response_data_type)
      fill_in  = FillIn.new(current_attributes)
      response = FreeResponse.new(kind: response_data_type, display_order: 1)

      fill_in.answers   << response
      section.questions << fill_in
      self.current_display_order += 1
    end

    def pick(kind, &options)
      choice = Choice.new(current_attributes.merge(pick: kind))

      option_parser = OptionParser.new(choice)
      option_parser.parse(&options)

      section.questions << choice
      self.current_display_order += 1
    end

    def current_attributes
      {text: current_text, metadata: current_metadata, display_order: current_display_order}
    end

    def dependency(&conditions)
      # Not implemented
    end

  end

  class OptionParser
    attr_reader   :choice
    attr_accessor :current_display_order

    def initialize(choice)
      @choice                = choice
      @current_display_order = 1
    end

    def parse(&options)
      instance_eval(&options)
    end

    def option(text, metadata={})
      choice.answers << Option.new(text: text, display_order: current_display_order, metadata: metadata)
      self.current_display_order += 1
    end
  end

end
