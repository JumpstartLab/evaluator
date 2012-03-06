class ResponsesRenameToEvaluationResponses < ActiveRecord::Migration
  def change
    rename_table :responses, :evaluation_responses
    rename_column :response_answers, :response_id, :evaluation_response_id
  end
end
