class HomeController < ApplicationController
  # before_action :authenticate_user!
  
  def index
    if user_signed_in?
      @saving_item = current_user.saving_items.build
    end
  end

  def contact
  end
end