class PaymentsController < ApplicationController
  before_action :set_booking

  def new
    #display stripe button
  end

  def create
    #callback from stripe
    customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )

  charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @booking.price_cents,
    description:  "Payment for booking for order #{@booking.id}",
    currency:     'eur'
  )

  @booking.update(payment: charge.to_json, status: 'paid')
  redirect_to confirmation_booking_path(@booking)

rescue Stripe::CardError => e
  flash[:alert] = e.message
  redirect_to booking_path(@booking)
  #make this redirect to show page

  end

private

def set_booking
  @booking = Booking.find(params[:booking_id])
end

end
