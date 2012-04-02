module Evaluator
  class Parser
    module IncrementingDisplayOrder

      def incrementing_display_order
        @_display_order ||= 2
        yield(@_display_order - 1) if block_given?
      end

    end
  end
end

