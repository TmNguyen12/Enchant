json.set! user.id do 
  json.extract! user, :id, :username, :about_me, :location
  json.image_url asset_path(user.image.url(:original))
end  


