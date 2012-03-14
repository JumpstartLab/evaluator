class FeedbacksController < ApplicationController
  resource_attr :feedback
  resource_attr :evaluation_response, :evaluation

  before_filter :assert_can_manage

  def create
    self.evaluation_response = EvaluationResponse.find_by_access_code(params[:evaluation_response_id])
    self.feedback            = evaluation_response.feedbacks.create(params[:feedback].merge(evaluator: current_user))

    if feedback.give
      flash.notice = "Feedback given"
      redirect_to evaluation_response_path(evaluation_response)
    else
      self.evaluation = evaluation_response.evaluation
      flash.notice = "There was an error giving your feedback"
      render "evaluation_responses/show"
    end
  end

end
