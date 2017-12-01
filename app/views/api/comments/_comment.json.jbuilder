json.extract! comment, :id, :user_id, :project_id, :body, :updated_at 
json.created_at comment.created_at.strftime('%B %d %Y')
json.user do
  json.extract! comment.user, :id, :image, :fname, :lname
end