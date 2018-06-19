class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @user = current_user
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.save

    redirect_to booking_path(@booking)
  end

  def edit
  end

  def update
  end

  def show
  end

end
