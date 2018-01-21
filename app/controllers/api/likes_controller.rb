class Api::LikesController < ApplicationController

  def create
    @project = Project.find_by(id: params[:project][:id])
    @like = Like.new(user_id: current_user.id, project_id: params[:project][:id])
    if @like.save
      @like_count = Project.find_by(id: params[:project][:id]).likes.count
      @project.liked_by_current_user = !@project.liked_by_current_user 
      @date = @project.created_at.strftime('%B %d %Y')

      render "api/projects/show"
    else 
      render json: @like.errors.full_messages, status: 418 
    end
  end 

  def show
    @project = Project.find_by(id: params[:project][:id])
  end 

  def destroy
    @project = Project.find_by(id: params[:project][:id])
    @like = current_user.likes.find_by(project_id: params[:project][:id])
    if @like
      @like.destroy
      @like_count = Project.find_by(id: params[:project][:id]).likes.count
      @date = @project.created_at.strftime('%B %d %Y')      
      render "api/projects/show"
    else 
      render json: "there was an error deleting", status: 418 
    end 
  end 

end
