class Api::ItemsController < ApplicationController
  # def create
  #   @item = Item.create!
  # end 

  def index 
    @items = Item.select { |item| item.project_id.to_s == params[:project_id]} 
    @project = Project.find_by(id: params[:project_id])
  end 

  def show 
    @item = Item.find_by(id: params[:id])
  end 
end 