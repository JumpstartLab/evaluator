class AssignmentsAddSelfEvaluate < ActiveRecord::Migration
  def change
    add_column :assignments, :self_evaluate, :boolean, :default => false, :null => false
  end
end
