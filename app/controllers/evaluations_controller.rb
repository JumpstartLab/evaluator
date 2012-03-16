class EvaluationsController < ApplicationController
  resource_attr :evaluation, :evaluations

  def index
    self.evaluations = Evaluation.non_instructor

    respond_to do |format|
      format.html
      format.json { render json: evaluations }
    end
  end

  def show
    self.evaluation = Evaluation.find_by_access_code!(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: evaluation }
    end
  end

end
