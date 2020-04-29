class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
    @game = Game.find(params[:game_id])
    @kids = Kid.where(user: current_user)
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.status = "Selected"
    @game = Game.find(params[:game_id])
    @reservation.game = @game
    authorize @reservation
    if @reservation.save
      redirect_to dashboard_path
    else
      redirect_to new_game_reservation_path(@game)
    end
  end

  def update
    @reservation = Reservation.find(params[:id])
    authorize @reservation
    @reservation.update(updated_at: Time.now)
    redirect_to dashboard_path
  end

  private

  # def set_game
  #   @game = Game.find(params[:game_id])
  # end

  def reservation_params
    params.require(:reservation).permit(:kid_id)
  end
end
