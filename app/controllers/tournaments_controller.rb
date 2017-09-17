class TournamentsController < ApplicationController
  def index
    @tournaments = Tournament.all
  end

  def new
    @tournament = Tournament.new
    @games = Game.all
  end

  def create
    # render plain: params[:users].inspect
    @tournament = Tournament.new(params.require(:tournament).permit(:name, :game_id))
    if @tournament.save
      redirect_to tournament_path(@tournament)
    else
      redirect_to fail_path
    end
  end

  def show
    @tournament = Tournament.find(params[:id])
  end

end


















#   def index
#     @tournaments = Tournament.all
#   end
#
#   def new
#     @tournament = Tournament.new
#   end
#
#   def create
#     # @tournament = Tournament.new(tournament_params)
#     @tournament = Tournament.new(params.require(:tournament).permit(:name))
#     @tournament.save
#     # redirect_to tournament_path(@tournament)
#   end
#
#   def show
#     @tournament = Tournament.find(params[:id])
#   end
#
#   private
#   def tournament_params
#     params.require(:tournament).permit(:name)
#   end
# end
