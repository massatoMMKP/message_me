class SessionsController < ApplicationController

  before_action :logged_in_redirect, only: [:new, :create]
  def new
  end

  def create

    username = params[:session][:username]
    password = params[:session][:password]

    user = User.find_by(username: username)

    if user&.authenticate(password)
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged in successfully."
    else
      flash.now[:alert] = "Invalid username or password."
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "Logged out successfully."
  end

  private

  def logged_in_redirect
    if logged_in?
      redirect_to root_path, alert: "You are already logged in."
    end
  end
  
end
