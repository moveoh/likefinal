class CommentsController < ApplicationController
  def create
    c = Comment.new
    c.content = params[:content]
    c.question_id = params[:question_id]
    c.save
    redirect_to :back
  end

  def destroy
    one_comment = Comment.find(params[:comment_id])
    one_comment.destroy
    
    redirect_to "/questions/index"
  end
  
end
