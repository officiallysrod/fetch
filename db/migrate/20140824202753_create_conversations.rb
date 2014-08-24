class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.references :match, index: true

      t.timestamps
    end
  end
end
