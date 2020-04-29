class GamesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_game, only: [:show]

  def index
    @games = policy_scope(Game)
    if params[:query].present?

      @games = @games.search_by_name(params[:query])
      if @games.empty?
        flash[:alert] = "Sorry no area matches your search."
        redirect_to(root_path)
      else
        @games = filter_results(@games)

        session[:search_results] = request.url
          if @games.empty?
            flash[:alert] = "Sorry no area matches your search."
            redirect_to(root_path)
          end
      end
    elsif params[:query].blank?
      @games = filter_results(@games)

      session[:search_results] = request.url
    else
      flash[:alert] = "Sorry no area matches your search."
      redirect_to(root_path)
    end
  end

  def show
    if current_user
      @all_reservations = current_user.reservations.where(game_id: @game.id)
      @my_reservation = current_user.reservations.where(game_id: @game.id, status: 'Selected')
      @declined_reservations = current_user.reservations.where(game_id: @game.id, status: 'Already Selected')
      # @favourite = current_user.favourites.where(kindergarden_id: @kindergarden.id).first
      @comment = Comment.new
      @kids_with_no_reservation = current_user.kids.reject { |kid| Reservation.exists?(kid_id: kid.id, game_id: @game.id) }
    #   # @reservation = Reservation.where(kid_id: current_user.kids. ?, kindergarden_id: @kindergarden.id)
    end
    @kid = Kid.new
    @reservation = Reservation.new

  end

  def filter_results(games)
    if params[:name].present?
      @games = games.where(name: params[:name])
    end

    if params[:description].present?
      @games = games.where(description: params[:description])
    end

    @games
  end


  private



  def game_params
    params.require(:game).permit(:name, :description, :photo)
  end

  def set_game
    @game = Game.find(params[:id])
    authorize @game
  end
end

