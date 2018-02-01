class Api::ProjectsController < ApplicationController

  # before_action :require_login 

  def create
    @project = Project.new(project_params)
    @project.author_id = current_user.id 
    @project.likes = []
    debugger 
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
    # if current_user.likes
    #   if current_user.likes.find_by(project_id: params[:project_id])
    #     @project.liked_by_current_user = true 
    #   else 
    #     @project.liked_by_current_user = false 
    #   end 
    # end 
    render "api/projects/show"
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
    params.require(:project).permit(:title, :description, :category, :thumnail_url, :video, :author_id)
  end 
end
