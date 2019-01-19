class UsersController < ApplicationController
  # before_action :logged_in_user, only: [:index, :show]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
end
