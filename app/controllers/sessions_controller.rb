class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user&.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else

      redirect_to login_path, alert: 'Username or password not found'

    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/', notice: 'Logged out!'
  end
end
