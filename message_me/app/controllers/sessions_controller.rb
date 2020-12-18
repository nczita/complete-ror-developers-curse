class SessionsController < ApplicationController
  before_action :logged_in_redirect, except: [:destroy]

  # GET /login
  def new
  end

  # POST /login
  def create
    user = User.find_by(username: session_params[:username])
    if user && user.authenticate(session_params[:password])
      session[:user_id] = user.id
      flash.notice = "Logged in successfully"
      redirect_to root_path
    else
      flash.now.alert = "There was something wrong with your login detail"
      render 'new'
    end
  end

  # DELETE /login
  def destroy
    if session[:user_id]
      flash.notice = "Logged out"
    end
    session[:user_id] = nil
    redirect_to login_path
  end

  private

  def session_params
    params.require(:session).permit(:username, :password)
  end

  def logged_in_redirect
    if logged_in?
      flash.alert = "You are already logged in"
      redirect_to root_path
    end
  end
end
