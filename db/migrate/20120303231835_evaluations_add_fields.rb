class EvaluationsAddFields < ActiveRecord::Migration
  def change
    rename_column :evaluations, :body, :description

    add_column :evaluations, :access_code,   :string
    add_column :evaluations, :open_at,       :datetime
    add_column :evaluations, :close_at,      :datetime
    add_column :evaluations, :display_order, :integer
    add_column :evaluations, :metadata,      :text

    add_index  :evaluations, :access_code
  end
end
