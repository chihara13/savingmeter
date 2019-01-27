class UsersController < ApplicationController
  # before_action :sign_in_required, only: [:show]
  
  PER = 8

  def index
    @users = User.page(params[:page]).per(PER)
  end

  def show
    @user = User.find(params[:id])
  end
  
end
