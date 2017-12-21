class Api::CommentsController < ApplicationController
  def index
    @project = Project.find_by(id: params[:project_id])
    @comments = Comment.select{ |c| c.project_id == @project.id}
  end

  def create
    debugger 
    @project = Project.find_by(id: params[:project_id])
    @comment = Comment.new(comment_params) 
    # @comment.user_id = current_user.id 
    @comment.project_id = @project.id 
    #may need to pass in user_id and project_id separately 
    if @comment.save 
      debugger
      @comments = Comment.select{ |c| c.project_id == @comment.project_id}
      render "api/comments/index"
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
