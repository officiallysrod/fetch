class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.text :body

      t.references :conversation, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
