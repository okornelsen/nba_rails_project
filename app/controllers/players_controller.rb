class PlayersController < ApplicationController
  def index
    @players = Player.includes(:team).order("rating DESC").page params[:page]
  end

  def show
    @player = Player.find(params[:id])
  end
end
