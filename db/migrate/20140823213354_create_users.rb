class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :fname
      t.string :lname
      t.string :dog_name
      t.text :bio
      t.string :password_digest

      t.timestamps
    end
  end
end
