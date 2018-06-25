class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create, :traveller]
  before_action :set_booking, only: [:show, :edit, :update, :traveller]

  def new
    @booking = Booking.new
    @types = Type.all

    @user = current_user
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.start_time = DateTime.parse("#{params[:booking]["start_date"]} #{params[:booking]["start_time"]}")
    @booking.budget_pp = params[:budget_pp].to_i

    @booking.set_price

    @booking.number_traveller.times do
      @booking.new_traveller
    end
    @booking.user = current_user
    @booking.save
    unless current_user
      session[:last_booking_id] = @booking.id
    end

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
    # if @booking.travellers.any?{|t| t.errors}
    #   flash[:alert] = @booking.travellers.map {|t| t.errors.full_messages}.flatten.join(",")
    #   render :traveller
    # else
      redirect_to booking_path(@booking)
    # end
  end

  def show
    if session[:last_booking_id]
      @booking.user = current_user
      @booking.save!
    end

  end

  def traveller
  end

  def confirmation
  end

  private
  def set_booking
    @booking = Booking.find(params[:id])
  end

  # set params for booking

  def booking_params
    params.require(:booking).permit(:origin, :number_traveller, :type_id, :climate, :accommodation_type)
  end

  def traveller_params(traveller_index)
    params.require("traveller_#{traveller_index}".to_sym).permit(:title, :first_name, :last_name, :nationality, :birth_date, :passport_number, :passport_expiration)
  end
end
