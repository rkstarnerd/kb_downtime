class UsersController < ApplicationController

  def index
    
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You have successfully registered."
      redirect_to root_path
    else 
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end