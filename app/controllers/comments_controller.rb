class CommentsController < ApplicationController

  def create
    @reservation = Reservation.find(params[:reservation_id])
    @comment = Comment.new(comment_params)
    @comment.reservation = @reservation
    authorize @comment
    if @comment.save
      redirect_to game_path(@reservation.game)
    else
      render :notice => "Something went wrong. Try again"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :rating)
  end

end
