module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

#created method to have a home page without being logged in
def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id].present?
end

  #redirect to sign up page if there is no current user
  def authroize
    redirect_to 'users/new' unless current_user
  end
end
