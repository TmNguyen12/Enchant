json.set! project.id do 
  json.extract! project, :id, :title, :description, :category, :thumbnail_url, :author_id, :created_at
  json.author project.user, :id, :image, :location, :fname, :lname, :about_me, :username
  json.likes project.likes.count 
  json.liked_by_current_user !!project.likes.find_by(user_id: current_user.id)
    # if !!project.likes.find_by(user_id: @current_user.id)
    #   json.liked_date project.likes.find_by(user_id: @current_user.id).created_at
    # end 
end

