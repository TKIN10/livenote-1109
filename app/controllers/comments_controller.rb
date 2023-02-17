class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to venue_path(@comment.venue)
    else
      @venue = @comment.venue_id
      @comments = @venue.comments
      render "venues/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:live_name, :content, :cost).merge(user_id: current_user.id, venue_id: params[:venue_id])
  end
end
