class RewardsController < ApplicationController

  def create
    @reservation = Reservation.find(params[:reservation_id])
    @reward = Reward.new(reward_params)
    @reward.reservation = @reservation
    authorize @reward
    if @reward.save
      redirect_to dashboard_path(@reservation.game)
    else
      render :notice => "Something went wrong. Try again"
    end
  end

  def update
    @reward = Reward.find(params[:id])
    authorize @reward
    @reward.update
    if @reward.save
      redirect_to wheel_path(@reservation.game)
    else
      render :notice => "Something went wrong. Try again"
    end

  end

  def reward_params
    params.require(:reward).permit(:prize)
  end

end
