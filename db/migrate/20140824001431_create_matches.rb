class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :user_id
      t.integer :friend_id

      t.timestamps
    end

    add_index :matches, :user_id
    add_index :matches, :friend_id
    add_index :matches, [:user_id, :friend_id], unique: true

  end
end
