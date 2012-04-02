module Evaluator
  class Parser
    class EvaluationBody
      include IncrementingDisplayOrder

      def initialize(evaluation)
        @evaluation = evaluation
      end

      def parse(&body)
        instance_eval(&body)
      end

      def section(title, metadata={}, &questions)
        section = incrementing_display_order do |order|
          Section.new(title: title, metadata: metadata, display_order: order)
        end

        body_parser = Evaluator::Parser::SectionBody.new(section)
        body_parser.parse(&questions)

        @evaluation.sections << section
      end

    end
  end
end

