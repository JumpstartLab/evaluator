class FeedbacksController < ApplicationController
  resource_attr :feedback
  resource_attr :evaluation_response, :evaluation

  before_filter :assert_can_manage

  def create
    self.evaluation_response = EvaluationResponse.find_by_access_code!(params[:evaluation_response_id])
    self.feedback            = evaluation_response.feedbacks.build(params[:feedback])

    if feedback.give_from(current_user)
      flash.notice = "Feedback given to #{feedback.recipient} on #{feedback.target_title}"
      redirect_to admin_evaluation_responses_path
    else
      self.evaluation = evaluation_response.evaluation
      flash.notice = "There was an error giving your feedback"
      render "evaluation_responses/show"
    end
  end

end
