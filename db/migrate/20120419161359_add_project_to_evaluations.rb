class AddProjectToEvaluations < ActiveRecord::Migration
  def change
    add_column :evaluations, :project, :boolean, :default => false
  end
end
