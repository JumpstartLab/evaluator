class EvaluationsController < ApplicationController
  resource_attr :evaluation, :evaluations

  def index
    self.evaluations = Evaluation.all

    respond_to do |format|
      format.html
      format.json { render json: evaluations }
    end
  end

  def show
    self.evaluation = Evaluation.find_by_access_code(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: evaluation }
    end
  end

  def destroy
    authorize! :manage, Evaluation
    evaluation = Evaluation.find(params[:id])
    evaluation.destroy

    respond_to do |format|
      format.html { redirect_to evaluations_url }
      format.json { head :no_content }
    end
  end
end
