class CreateEvaluationSections < ActiveRecord::Migration
  def change
    create_table :evaluation_sections do |t|
      t.integer  :evaluation_id, :null => false
      t.string   :title
      t.text     :description
      t.integer  :display_order
      t.text     :metadata

      t.timestamps
    end

    add_index :evaluation_sections, :evaluation_id
  end
end
