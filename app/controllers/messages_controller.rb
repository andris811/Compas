class MessagesController < ApplicationController

  def create
    @message = Message.new(params.require(:message).permit(:comment))
    trip = Trip.find(params[:trip_id])
    @message.trip = trip
    @message.user = current_user
      @message.save
      redirect_to trip_path(@message.trip)
  end


end
