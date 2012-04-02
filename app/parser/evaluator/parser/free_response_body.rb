module Evaluator
  class Parser
    class FreeResponseBody

      def initialize(fill_in, free_response_kind=nil)
        @fill_in = fill_in

        if free_response_kind
          @fill_in.answers << FreeResponse.new(kind: free_response_kind, display_order: 1)
        end
      end

      def parse(&body)
        instance_eval(&body)
      end

      def kind(kind)
        response = FreeResponse.new(kind: kind, display_order: 1)
        @fill_in.answers = [response]
      end

      def dependency(&conditions)
        #raise NotImplementedError.new("Question dependencies are not yet available")
      end

    end
  end
end

