json.set! @project.id do 
  json.extract! @project, :id, :title, :description, :category, :thumbnail_url, :author_id, :created_at
  json.author @project.user, :id, :image, :location, :fname, :lname, :about_me, :username
  json.created_at @date 
  json.likes @project.likes.length 
  json.liked_by_current_user !!@project.likes.find_by(user_id: current_user.id)
end 




