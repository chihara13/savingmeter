class HomeController < ApplicationController
  # before_action :authenticate_user!
  
  def index
    if logged_in?
      @saing_item = current_user.saving_items.build
    end
  end

  def contact
  end
end