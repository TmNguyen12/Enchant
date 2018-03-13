class Api::ProjectsController < ApplicationController

  # before_action :require_login 

  def create
    @project = Project.new(project_params)
    @project.author_id = current_user.id 
    @project.likes = []
    if @project.save
      render "api/projects/edit"
    else 
      render json: @project.errors.full_messages, status: 418 
    end 
  end 

  def index 
    @projects = Project.all 
    @current_user = current_user
  end 

  def show 
    @current_user = current_user    
    @project = Project.find(params[:id])
    @date = @project.created_at.strftime('%B %d %Y')
    render "api/projects/show"
  end 

  def edit 
    @project = Project.find(params[:id]) 
  end
  
  def update
    @project = Project.find(params[:id])
    @project.thumbnail_url = @project.items[0].image.url
    if @project.update_attributes(project_params)
      # go to the project show page 
      render "api/projects/show"
    else 
      render json: @project.errors.full_messages, status: 419
    end 
  end 

  private
  def project_params
    params.require(:project).permit(:title, :description, :category, :thumnail_url, :video, :author_id)
  end 
end
