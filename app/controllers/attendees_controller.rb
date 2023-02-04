class AttendeesController < ApplicationController
  before_action :set_attendees, only: [:show, :edit]

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
    @trip = Trip.find(params[:id])
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
    @attendee = Attendee.find(params[:trip_id])
    # @trip = Trip.find(params[:trip_id])
    @attendee.approved = !@attendee.approved
    @attendee.save
    redirect_to trip_path(@attendee.trip)
  end

  private

  def set_attendees
    @attendee = Attendee.find(params[:id])
  end
end
