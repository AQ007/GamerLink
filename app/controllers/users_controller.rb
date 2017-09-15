class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
  end

  def create
    # render plain: params[:users].inspect
    @users = User.new(params.require(:users).permit(:username, :password, :email))
    @users.save
    redirect_to @users
  end

  def show
    @user = User.find(params[:id])
  end

end
