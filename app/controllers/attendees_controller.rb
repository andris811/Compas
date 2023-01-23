class AttendeesController < ApplicationController
  before_action :set_attendee, only: [:show, :edit, :update, :destroy]

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

    @attendee.user = current_user

    @attendee.destroy
    redirect_to trip_path(@attendee.trip)
    # @trip = Trip.find(params[:trip_id])
    # @attendee = Attendee.find(params[:id])
    # @attendee.destroy

    # redirect_to trip_path(@attendee.trip)
  end

  private

  def set_attendees
    @attendee = Attendee.find(params[:id])
  end
end
