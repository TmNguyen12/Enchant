arr = []
json.byId do 
  @comments.each do |comment|
    json.set! comment.id do 
      json.partial! 'api/comments/comment', comment: comment 
    end 
    arr << comment.id 
  end 
end 
json.allIds do 
  json.array! arr
end 
