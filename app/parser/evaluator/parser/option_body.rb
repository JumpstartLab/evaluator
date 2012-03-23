module Evaluator
  class Parser
    class OptionBody
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
        choice.answers << ::Option.new(text: text, display_order: current_display_order, metadata: metadata)
        self.current_display_order += 1
      end
    end
  end
end
