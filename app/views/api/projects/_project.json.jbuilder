json.set! project.id do 
  json.extract! project, :id, :title, :description, :category, :thumbnail_url, :author_id, :created_at
end 