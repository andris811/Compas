class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @images = []

    @user.photos.each do |pic|
      image = {
        url: pic.url,
        text: "This is a pic"
      }
      @images << image
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to user_path(@user.id)
    else
      render :edit, status: 422
    end
  end



  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :dob, :emergency_contact_name, :emergency_contact_phone_number, :avatar, photos:[])
  end

end
