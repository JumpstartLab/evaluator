class EvaluationsAddPeer < ActiveRecord::Migration
  def change
    add_column :evaluations, :peer, :boolean
  end
end
