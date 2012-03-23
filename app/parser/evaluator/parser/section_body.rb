module Evaluator
  class Parser
    class SectionBody
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

        question_parser = Evaluator::Parser::QuestionBody.new(section)
        question_parser.parse(&questions)

        evaluation.sections << section
        self.current_display_order += 1
      end

    end
  end
end
