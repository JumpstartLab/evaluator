class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer  :person_id
      t.integer  :evaluation_id
      t.string   :access_code
      t.datetime :started_at
      t.datetime :completed_at

      t.timestamps
    end
  end
end
