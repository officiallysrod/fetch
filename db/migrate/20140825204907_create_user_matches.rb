class CreateUserMatches < ActiveRecord::Migration
  def change
    create_table :user_matches do |t|
      t.references :user, index: true
      t.references :match, index: true

      t.timestamps
    end
  end
end
