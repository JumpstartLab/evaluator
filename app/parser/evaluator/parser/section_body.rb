module Evaluator
  class Parser
    class SectionBody
      include IncrementingDisplayOrder

      def initialize(section)
        @section = section
      end

      def parse(&body)
        instance_eval(&body)
      end

      def free_response(text, metadata={}, &details)
        kind = metadata.delete(:kind)

        fill_in  = incrementing_display_order do |order|
          FillIn.new(text:          text,
                     metadata:      metadata,
                     display_order: order)
        end

        details_parser = Evaluator::Parser::FreeResponseBody.new(fill_in, kind)
        details_parser.parse(&details) if details

        @section.questions << fill_in
      end

      def pick_one(text, metadata={}, &options)
        choice = incrementing_display_order do |order|
          Choice.new(text:          text,
                     metadata:      metadata,
                     display_order: order,
                     pick:          :one)
        end

        option_parser = Evaluator::Parser::OptionBody.new(choice)
        option_parser.parse(&options)

        @section.questions << choice
      end

      def pick_any(text, metadata={}, &options)
        choice = incrementing_display_order do |order|
          Choice.new(text:          text,
                     metadata:      metadata,
                     display_order: order,
                     pick:          :any)
        end

        option_parser = Evaluator::Parser::OptionBody.new(choice)
        option_parser.parse(&options)

        @section.questions << choice
      end

      def description(text)
        @section.description = text
      end

    end
  end
end
