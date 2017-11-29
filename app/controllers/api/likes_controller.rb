class Api::LikesController < ApplicationController

  def create
    @project = Project.find_by(id: params[:project_id])
    @like = Like.create!(user_id: current_user.id, project_id: params[:project_id])
    if @like.save
      debugger
      @like_count = @project.likes(true).count
      render :json "api/likes/likes"
    else 
      render json: @like.errors.full_messages, status: 418 
    end
  end 

  def destroy
    @like = Like.find(params[:id])
    if @like.destroy
      @like_count = @project.likes(true).count 
    else 
      render json: @like.errors.full_messages, status: 418 
    end       
  end 

end
