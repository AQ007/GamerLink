class WelcomeController < ApplicationController
  def index
    @users = User.all
    @tournaments = Tournament.all
  end
end
