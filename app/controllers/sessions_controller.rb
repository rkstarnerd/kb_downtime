class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id]
      flash[:notice] = "You've logged in!"
      redirect_to root_path
    else
      flash[:error] = "Your username and/or password was incorrect. Please try again."
      redirect_to login_path
    end
  end
  
  def destroy
    session[:user_id] = nil
    flash[:notice] = "You've logged out!"
    redirect_to root_path
  end
end