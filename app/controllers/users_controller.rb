class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    # render plain: params[:users].inspect
    @user = User.new(params.require(:user).permit(:username, :password, :email))
    if @user.save
      redirect_to user_path(@user)
    else

      redirect_to fail_path

    end
  end

  def show
    @user = User.find(params[:id])
  end





end
