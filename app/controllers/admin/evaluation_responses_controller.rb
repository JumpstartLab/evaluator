  module Admin
  class EvaluationResponsesController < ApplicationController
    resource_attr :evaluation, :evaluation_response, :evaluation_responses

    before_filter :require_admin

    def index
      self.evaluation_responses = EvaluationResponse.order(:evaluation_id, :person_id).includes(:person)

      respond_to do |format|
        format.html
      end
    end

    def show
      self.evaluation_response = EvaluationResponse.find_by_access_code(params[:id])
      self.evaluation          = evaluation_response.evaluation

      respond_to do |format|
        format.html { render "evaluation_responses/show" }
      end
    end

    private

    def require_admin
      authorize! :manage, :all
    end

  end
end
