class Api::ItemsController < ApplicationController
  def create
    @item = Item.create!(item_params)
    # @item.author_id = current_user.id 
    @item.project_id = item_params[:project_id]
    if @item.save! 
      render json: {image_url: @item.image.url}
    else 
      render json: @item.errors.full_messages, status: 418 
    end 
  end 

  def index 
    @items = Item.select { |item| item.project_id.to_s == params[:project_id]} 
    @project = Project.find_by(id: params[:project_id])
  end 

  def show 
    @item = Item.find_by(id: params[:id])
  end 

  private
  def item_params
    params.require(:item).permit(:project_id, :id, :image, :text, :caption)
  end 

end 

