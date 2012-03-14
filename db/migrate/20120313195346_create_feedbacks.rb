class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :evaluator_id, null: false
      t.integer :evaluation_response_id, null: false
      t.text :remarks, null: false

      t.timestamps
    end
  end
end
