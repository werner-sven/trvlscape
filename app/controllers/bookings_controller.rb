class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  before_action :set_booking, only: [:show, :edit, :update, :traveller]
  # before_action :booking_params, only: [:create, :update]

  def new
    @booking = Booking.new
    @types = Type.all

    @user = current_user
  end

  def create
    # update params for create when form exists
    # creating a new booking
    # add all params for booking

    @booking = Booking.new(booking_params)
    @booking.number_traveller.times do
      @booking.new_traveller
    end
    # loop through number of travellers from bookings param and add new traveller
    # @booking.new_traveller
    @booking.user = current_user
    @booking.save

    redirect_to traveller_booking_path(@booking)
  end

  def edit
  end

  def update
    #here we need an if_statement that executes different code depending which side we edit (booking vs traveller)

    #execute this part only when traveller_param[for traveller 0] exists (or better when beeing redirected from booking/:id/traveller)
    @booking.travellers.each_with_index do |traveller, index|
      traveller.update(traveller_params(index))
    end
    redirect_to booking_path(@booking)
  end

  def show
  end

  def traveller
  end

  private
  def set_booking
    @booking = Booking.find(params[:id])
  end

  # set params for booking

  def booking_params
    params.require(:booking).permit(:origin, :number_traveller)
  end

  def traveller_params(traveller_index)
    params.require("traveller_#{traveller_index}".to_sym).permit(:title, :first_name, :last_name, :nationality, :birth_date, :passport_number, :passport_expiration)
  end

end
