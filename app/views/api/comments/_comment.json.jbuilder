json.extract! comment, :id, :user_id, :project_id, :body, :created_at, :updated_at
json.set! comment.user do
  json.extract! comment.user, :id, :image, :fname, :lname
end