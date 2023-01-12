class TripsController < ApplicationController
  before_action :set_trips, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!

  def index
    @trips = Trip.all

    @search = params["search"].present? ? params[:search][:search] : nil
    if @search.present?
      puts "@search present ? #{@search}"
      @trips = Trip.where("trip_name ILIKE ? OR description ILIKE ?", "%#{@search}%", "%#{@search}%")
    end
  end

  def show; end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save
      redirect_to trip_path(@trip)
    else
      render :new, status: 422
    end
  end

  def edit; end

  def update
    if @trip.update(trip_params)
      redirect_to trip_path(@trip)
    else
      render :new, status: 422
    end
  end

  def destroy
    @trip.destroy
    redirect_to trips_path, status: :see_other
  end

  private

  def set_trips
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:trip_name, :max_people, :description, :pets, :start_date, :end_date)
  end
end
