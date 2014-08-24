class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :lat
      t.float :lng
      t.float :accuracy
      t.references :user, index: true

      t.timestamps
    end
  end
end
