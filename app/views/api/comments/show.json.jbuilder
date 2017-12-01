# json.set! @comment.id do 
#   json.partial! 'api/comments/comment', comment: @comment
# end 

arr = [@comment.id]
json.byId do 
    json.set! @comment.id do 
      json.partial! 'api/comments/comment', comment: @comment 
    end 
end
json.allIds do 
  json.array! arr 
end 

