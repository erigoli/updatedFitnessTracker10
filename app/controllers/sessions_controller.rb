# SESSIONS CONTROLLER
# This controller manages user sessions, allowing users to log in and out.
class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to home_path #index, notice: "Logged in successfully"
    else
      flash.now[:alert] = "Invalid username or password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "Logged out successfully"
  end
end
