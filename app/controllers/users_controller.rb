class UsersController < ApplicationController
  include UsersHelper

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render 'questions/index'
    else
      render 'new'
    end
  end
end
