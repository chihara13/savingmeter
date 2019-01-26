class UsersController < ApplicationController
  # before_action :logged_in_user, only: [:index, :show]
  
  PER = 8

  def index
    @users = User.page(params[:page]).per(PER)
  end

  def show
    @user = User.find(params[:id])
  end
  
end
