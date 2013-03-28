class EvaluationsResponsePresenter
  def initialize
    @evaluation_responses = EvaluationResponse.order(:evaluation_id, :evaluator_id, :evaluatee_id).includes(:evaluator, :evaluatee)
  end

  def evaluation_with_evaluator_responses
    @evaluation_responses.group_by(&:evaluation).reverse_each do |evaluation,responses|
      grouped_responses = responses.group_by { |response| response.evaluator }

      yield(evaluation,grouped_responses) if block_given?
    end
  end

end