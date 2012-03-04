class CreateResponseAnswers < ActiveRecord::Migration
  def change
    create_table :response_answers do |t|
      t.integer :response_id
      t.integer :question_id
      t.integer :answer_id
      t.text    :serialized_value
      t.string  :unit

      t.timestamps
    end

    add_index :response_answers, :response_id
  end
end
