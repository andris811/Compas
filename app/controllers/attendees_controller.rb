class AttendeesController < ApplicationController
  before_action :set_attendees, only: [:show, :edit, :update, :destroy]

  def create
    @attendee = Attendee.new
    trip = Trip.find(params[:trip_id])
    @attendee.approved = false
    @attendee.trip = trip
    @attendee.user = current_user
      @attendee.save
      redirect_to trip_path(@attendee.trip)
  end

  def index
    @attendees = Attendee.all
  end

  def destroy
    @trip = Trip.find(params[:trip_id])
    @attendee = Attendee.find(params[:id])
    name = @attendee.user.first_name
    if @attendee.destroy
      flash[:notice] = "#{name} has canceled their trip successfully."
      redirect_to @trip
    else
      flash[:error] = 'There was an error canceling your trip.'
      render :show
    end

    # trip = Trip.find(params[:trip_id])
    # @attendee.trip = trip
    # @attendee.user = current_user
    #   @attendee.destroy
    #   redirect_to trip_path(@attendee.trip)
  end

  def update
    # change boolean value of attendee

  end


  private

  def set_attendees
    @attendee = Attendee.find(params[:id])
  end
end
