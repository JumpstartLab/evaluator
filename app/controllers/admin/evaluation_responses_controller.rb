module Admin
  class EvaluationResponsesController < ApplicationController
    resource_attr :evaluation, :evaluation_response, :evaluation_responses, :feedback

    before_filter :require_admin
    before_filter :prepend_partial_prefix

    def index
      self.evaluation_responses = EvaluationResponse.order(:evaluation_id, :evaluator_id).includes(:evaluator, :evaluatee)

      respond_to do |format|
        format.html
      end
    end

    def show
      self.evaluation_response = EvaluationResponse.find_by_access_code!(params[:id])
      self.evaluation          = evaluation_response.evaluation
      self.feedback            = evaluation_response.feedbacks.build

      respond_to do |format|
        format.html { render "evaluation_responses/show" }
      end
    end

    private

    def require_admin
      authorize! :manage, :all
    end

    def prepend_partial_prefix
      # By default, ActionView has some jank lookup and
      # would not find 'feedbacks/_feedback.html.haml'.
      # This may cause other, as-yet-unseen hurt.
      lookup_context.prefixes.prepend ''
    end

  end
end
