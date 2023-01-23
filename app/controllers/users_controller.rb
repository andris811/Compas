class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    image = {
      url: "https://mdbootstrap.com/img/new/standard/nature/184.jpg",
      text: "Bali..."
    }
    @images = []
    5.times { @images << image }
  end
end
