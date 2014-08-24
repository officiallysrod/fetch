class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :liker_id
      t.integer :likee_id

      t.timestamps
    end

    add_index :likes, :liker_id
    add_index :likes, :likee_id
    add_index :likes, [:liker_id, :likee_id], unique: true

  end
end
