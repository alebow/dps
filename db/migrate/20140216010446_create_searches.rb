class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :position
      t.integer :client_id
      t.integer :user_id

      t.timestamps
    end
    add_index :searches, [:user_id]
    add_index :searches, [:client_id]
  end
end
