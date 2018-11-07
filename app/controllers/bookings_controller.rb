class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])

  end


  def new
    @camp = Camp.find(params[:camp_id])
    @booking = Booking.new
    # @booking.user = current_user
  end

  def create
    @camp = Camp.find(params[:camp_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.camp = @camp
    if @booking.save
      redirect_to user_booking_path(current_user, @booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
