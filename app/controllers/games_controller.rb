class GamesController < ApplicationController

  def index
    @games = policy_scope(Game)
    @games = Game.all
  end

end
