class EvaluationResponsesRenamePersonIdToEvaluateeId < ActiveRecord::Migration
  def change
    rename_column :evaluation_responses, :person_id, :evaluatee_id
  end
end
