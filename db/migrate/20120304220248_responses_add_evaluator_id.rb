class ResponsesAddEvaluatorId < ActiveRecord::Migration
  def change
    add_column :responses, :evaluator_id, :integer
  end
end
