class Api::ProjectsController < ApplicationController

  # before_action :require_login 

  def create
    @project = Project.new(project_params)
    @project.author_id = current_user.id 
    if @project.save
      # send to project update page 
    else 
      render json: @project.errors.full_messages, status: 418 
    end 
  end 

  def index 
    @projects = Project.all 
  end 

  def show 
    @project = Project.find(params[:id])
  end 

  def edit 
    @project = Project.find(params[:id]) 
  end
  
  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      # go to the project show page 
    else 
      render json: @project.errors.full_messages, status: 419
    end 
  end 

  private
  def project_params
    params.require(:project).permit(:title, :description, :category, :thumnail_url, :video)
  end 
end
