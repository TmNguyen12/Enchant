class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, null: false 
      t.string :password_digest
      t.text :about_me
      t.string :photo
      t.string :location

      t.timestamps
    end

    add_index :users, :username, unique: true 
  end
end
