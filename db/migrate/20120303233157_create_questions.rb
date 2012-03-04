class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer  :evaluation_section_id, :null => false
      t.text     :text
      t.text     :help_text
      t.string   :type
      t.string   :pick
      t.integer  :display_order
      t.boolean  :mandatory, :default => false, :null => false
      t.integer  :correct_answer_id
      t.text     :metadata

      t.timestamps
    end
  end
end
