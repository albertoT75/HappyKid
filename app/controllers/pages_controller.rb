class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @games = Game.all
  end

  def dashboard
    @kids = current_user.kids
  end

  def week
    @kids = current_user.kids
  end

end
