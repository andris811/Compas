class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @nav = false
    @foot = false
    if user_signed_in?
      redirect_to trips_path
    end
  end
end
