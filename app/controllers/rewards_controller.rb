class RewardsController < ApplicationController
  before_action :set_reward, only: [:edit, :update]

  def new
    @reward = current_user.rewards.new
    authorize @reward
  end

  def create
    @reward = current_user.rewards.new(reward_params)
    authorize @reward
    if @reward.save
      flash[:notice] = 'Rewards have been added to your profile.'
      redirect_to dashboard_path(current_user)
    else
      flash[:alert] = 'Something went wrong, please try again.'
      redirect_to new_reward_path(@reward)
    end
  end

  def edit
    authorize @reward
  end

  def update
    authorize @reward
    if @reward.update(reward_params)
      flash[:success] = "Your rewards have been successfully updated!"
      redirect_to dashboard_path(current_user)
    else
      flash[:alert] = 'Something went wrong, please try again!'
      redirect_to edit_reward_path(current_user)
    end
  end

  private

  def reward_params
    params.require(:reward).permit(:name, :first_prize, :second_prize, :third_prize, :fourth_prize, :fifth_prize)
  end

  def set_reward
    @reward = Reward.find(params[:id])
  end

end

