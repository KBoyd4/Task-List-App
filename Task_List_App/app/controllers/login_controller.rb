class LoginController < ApplicationController
  def index
  end

  def authenticate

    user = User.find_by(username: params[:username], password: params[:password])

   
    if user
      session[:user_id] = user.id
      flash[:message] = "Welcome back #{user.first_name}! You have been logged in."
      redirect_to home_path
    else
      flash[:message] = "Login failed. User can't be found"
      redirect_to login_path
    end

  end

  def logout
	session[:user_id] = nil
    flash[:message] = "You have been logged out"
    redirect_to login_path	
  end
end
