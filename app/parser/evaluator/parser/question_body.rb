module Evaluator
  class Parser
    class QuestionBody
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

        option_parser = Evaluator::Parser::OptionBody.new(choice)
        option_parser.parse(&options)

        section.questions << choice
        self.current_display_order += 1
      end

      def current_attributes
        {text: current_text, metadata: current_metadata, display_order: current_display_order}
      end

      def dependency(&conditions)
        #raise NotImplementedError.new("Question dependencies are not yet available")
      end

    end
  end
end
