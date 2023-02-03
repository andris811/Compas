class UsersController < ApplicationController

  def show
    # set_attendees

    @user = User.find(params[:id])
    @images = []
    @current_trips = []
    @past_trips = []
    @future_trips = []

    @user.photos.each do |pic|
      image = {
        url: pic.url,
        text: "This is a pic"
      }
      @images << image
    end

    @user.trip.each do |pic|
      if pic.user_id == @user.id
        photo = pic.photos.first
        current_trips = {
          url: photo.url
        }
        @current_trips << current_trips
      end
    end

    Attendee.all.each do |attendees|
      # x = pic.id
      # puts attendee.attendees
      puts "HELLO THIS IS ME!!-----------------------------------------------------------------------"
      if attendees.user_id == @user.id
        puts "Worked!!-----------------------------------------------------------------------"
        if attendees.trip.end_date <= Date.today
          puts "This is in thbe past"
        # if @user.id == pic.attendees

          photo = attendees.trip.photos.first
          past_trips = {
            url: photo.url
          }
          @past_trips << past_trips
        else
          puts "This is in the future"
          # if @user.id == pic.attendees

            photo = attendees.trip.photos.first
            future_trips = {
              url: photo.url
            }
            @future_trips << future_trips
      end
    end



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


  def set_attendees
    @attendee = Attendee.find(params[:user_id])
  end

end
