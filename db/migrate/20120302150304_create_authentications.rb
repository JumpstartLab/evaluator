class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.string  :provider,  :null => false
      t.string  :uid,       :null => false
      t.integer :person_id, :null => false

      t.timestamps
    end

    add_index :authentications, [:provider, :uid]
  end
end
