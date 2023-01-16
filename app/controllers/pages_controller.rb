class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if user_signed_in?
      redirect_to trips_path
    end
  end

  def profile
    image = {
      url: "https://mdbootstrap.com/img/new/standard/nature/184.jpg",
      text: "Bali..."
    }
    @images = []
    5.times { @images << image }
  end
end
