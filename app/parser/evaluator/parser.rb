module Evaluator
  class Parser

    def parse(evaluation_code, file_name=__FILE__, lineno=__LINE__+1)
      ActiveRecord::Base.transaction do
        instance_eval evaluation_code, file_name, lineno
      end
    end

    def evaluation(title, metadata={}, &sections)
      evaluation = Evaluation.new(title: title, metadata: metadata)

      section_parser = Evaluator::Parser::SectionBody.new(evaluation)
      section_parser.parse(&sections)

      evaluation
    end

    def peer_evaluation(title, metadata={}, &sections)
      evaluation = Evaluation.new(title: title, metadata: metadata, peer: true)

      section_parser =Evaluator::Parser::SectionBody.new(evaluation)
      section_parser.parse(&sections)

      evaluation
    end

    def instructor_evaluation(title, metadata={}, &sections)
      evaluation = Evaluation.new(title: title, metadata: metadata, peer: true, instructor: true)

      section_parser = Evaluator::Parser::SectionBody.new(evaluation)
      section_parser.parse(&sections)

      Person.each_group do |instructor, students|
        students.each do |student|
          evaluation.responses.build(started_at: Time.zone.now, evaluator: instructor, evaluatee: student)
        end
      end

      evaluation
    end

  end

end
