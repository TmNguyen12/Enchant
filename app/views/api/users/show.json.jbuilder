# json.set! @user.id do 
  json.partial! "api/users/user", user: @user
  json.image_url asset_path(@user.image.url(:original))
# end  

