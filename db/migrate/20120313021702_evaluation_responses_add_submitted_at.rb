class EvaluationResponsesAddSubmittedAt < ActiveRecord::Migration
  def change
    add_column :evaluation_responses, :submitted_at, :datetime
    execute <<-SQL
      UPDATE evaluation_responses
      SET submitted_at = completed_at, completed_at = NULL
    SQL
  end
end
