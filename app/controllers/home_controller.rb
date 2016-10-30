class HomeController < ApplicationController

  def index
    redirect_to home_profile_url if session[:user_id]
  end

  def profile
    redirect_to home_index_url if !session[:user_id]
  end

end
