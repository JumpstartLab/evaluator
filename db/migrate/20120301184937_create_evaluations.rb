class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.string :title
      t.text :body
      t.integer :assignment_id
      t.integer :person_id

      t.timestamps
    end
  end
end
