class EvaluationsAddIntructor < ActiveRecord::Migration
  def change
    add_column :evaluations, :instructor, :boolean, default: false
  end
end
