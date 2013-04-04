class EvaluationResponsesController < ApplicationController
  resource_attr :evaluation, :evaluation_response, :feedback

  before_filter :prevent_duplicate_responses, :only => :create

  def show
    self.evaluation_response = EvaluationResponse.find_by_access_code!(params[:id])
    self.evaluation          = evaluation_response.evaluation
    self.feedback            = evaluation_response.feedbacks.build

    respond_to do |format|
      format.html
    end
  end

  def create
    attributes = params[:evaluation_response].merge(started_at: Time.zone.now)
    evaluation_response = current_user.responses.create(attributes)

    respond_to do |format|
      format.html { redirect_to edit_evaluation_response_url(evaluation_response) }
    end
  end

  def edit
    self.evaluation_response = current_user.responses.incomplete.find_by_access_code!(params[:id])
    self.evaluation = evaluation_response.evaluation

    respond_to do |format|
      format.html
    end
  end

  def update
    evaluation_response = current_user.responses.incomplete.find_by_access_code!(params[:id])
    evaluation_response.submit(params[:evaluation_response])

    respond_to do |format|
      format.html { redirect_to evaluations_path }
    end
  end

  private

  def prevent_duplicate_responses
    if er = current_user.responses.find_by_evaluation_id(params[:evaluation_response][:evaluation_id])
      redirect_to edit_evaluation_response_url(er)
    end
  end
end
