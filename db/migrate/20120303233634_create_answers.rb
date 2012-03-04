class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id,  :null => false
      t.text    :text
      t.text    :help_text
      t.integer :weight,       :default => 1, :null => false
      t.integer :display_order
      t.boolean :exclusive,    :default => false, :null => false
      t.string  :type
      t.string  :default_value

      t.timestamps
    end

    add_index :answers, :question_id
  end
end
