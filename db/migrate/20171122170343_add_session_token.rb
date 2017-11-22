class AddSessionToken < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :password_digest, :string 
    add_column :users, :password_digest, :string, null: false 
    add_column :users, :session_token, :string, null: false 
    
  end
end
