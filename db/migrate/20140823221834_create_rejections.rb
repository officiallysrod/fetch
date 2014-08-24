class CreateRejections < ActiveRecord::Migration
  def change
    create_table :rejections do |t|
      t.integer :rejector_id
      t.integer :rejectee_id

      t.timestamps
    end

    add_index :rejections, :rejector_id
    add_index :rejections, :rejectee_id
    add_index :rejections, [:rejector_id, :rejectee_id], unique: true

  end
end
