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
    if (params[:booking]["start_date"] && params[:booking]["start_time"] && params[:booking]["start_date"] != "")
      @booking.start_time = DateTime.parse("#{params[:booking]["start_date"]} #{params[:booking]["start_time"]}")
    end
    @booking.budget_pp = params[:budget_pp].to_i
    @booking.set_price

    @booking.match_to_package

    counter = 0
    @booking.number_traveller.times do
      if counter == 0
      @booking.new_traveller_first(params["first_name"])
      else
      @booking.new_traveller
      end
      counter += 1
    end
    @booking.user = current_user
    @booking.save
    unless current_user
      session[:last_booking_id] = @booking.id
    end
    if @booking.save

      flash[:alert].clear if flash[:alert]
      redirect_to traveller_booking_path(@booking)
    else
      flash.now[:alert] = @booking.errors.full_messages.join(", ")
      render :new
    end

  end

  def edit
  end

  def update
    @booking.travellers.each_with_index do |traveller, index|
      traveller.update(traveller_params(index))
    end
    if @booking.travellers.any?{|t| t.errors.messages != {} }
       flash.now[:alert] = @booking.travellers.map {|t| t.errors.full_messages}.flatten.join(", ")
       render :traveller
    else
      flash[:alert].clear if flash[:alert]
      redirect_to booking_path(@booking)
    end
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
    booking = Booking.find(params[:id])
    sms = TwilioService.new(booking.user.phone)
    sms.confirmation(booking.travellers[0])
    weather = WheatherService.new(Booking.find(params[:id]).package).get_weather

    weather_text = "Hi #{booking.travellers[0].first_name}, your trip is just 5 days away! As a little headsup, your weather will be #{weather.description}. You are expected to have #{weather.expected_temp}°C and #{weather.humidity}% humidity."
    sms.weather(weather_text)

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
