class Api::CommentsController < ApplicationController
  def index
    @project = Project.find_by(id: params[:project_id])
    @comments = Comment.select{ |c| c.project_id == @project.id}
  end

  def create
    @project = Project.find_by(id: params[:project_id])
    @comment = Comment.new(comment_params) 
    @comment.user_id = current_user.id 
    @comment.project_id = @project.id 
    #may need to pass in user_id and project_id separately 
    if @comment.save 
      render "api/comments/show"
    end 
  end

  def show
    @comment = Comment.find(params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :user_id, :project_id)
  end 

end
