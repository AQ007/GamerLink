class GamesController < ApplicationController
  def create
    @game = Game.new(params.require(:game).permit(:name))
  end

  def new
    @game = Game.new
  end

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

end
