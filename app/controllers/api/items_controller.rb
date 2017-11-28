class Api::ItemsController < ApplicationController
  def create
    @item = Item.create!(params)
    @item.author_id = current_user.id 
    @item.project_id = params[:project_id]
    if @item.save 

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
end 