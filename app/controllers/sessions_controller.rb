class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      render '/login'
    end
  end

  def destroy
    session.delete(:user_id)
    render 'questions/index'
  end
end
