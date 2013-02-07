module Evaluator
  class Parser
    module IncrementingDisplayOrder

      def incrementing_display_order
        yield(next_display_order) if block_given?
      end

      def next_display_order
        @_display_order ||= 0
        @_display_order += 1
      end

    end
  end
end

