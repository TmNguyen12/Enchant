class AddLiketoProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :liked_by_current_user, :boolean 
  end
end
