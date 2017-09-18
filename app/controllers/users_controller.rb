class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    # render plain: params[:users].inspect
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      respond_to do |format|
        format.html { redirect_to root_path  }
        format.js
      end
    else
      redirect_to fail_path
    end
  end

  def show
    @user = User.find(params[:id])
  end
#so user can not see only admin can see
  private
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

end
