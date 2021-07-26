class CommentsController < ApplicationController
  def create
    @sneaker = Sneaker.find(params[:sneaker_id])
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to "/sneakers/#{@comment.sneaker.id}"
    else
      render "sneakers/show"
    end
  end

  def destroy
    redirect_to root_path if @comment.destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, sneaker_id: params[:sneaker_id])
  end
end
