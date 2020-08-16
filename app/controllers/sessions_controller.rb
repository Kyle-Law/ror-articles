class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(username: params[:username])
    if user
      session[:user_id] = user.id
      redirect_to root_path, notice: "Welcome back, #{user.username}!"
    else
      flash.now[:alert] = 'Unregistered User!'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to articles_url, notice: "You're now signed out!"
  end
end
