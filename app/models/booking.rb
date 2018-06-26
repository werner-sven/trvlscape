class Booking < ApplicationRecord
  has_many :travellers
  belongs_to :package, required: false
  belongs_to :user, required: false
  belongs_to :type, required: false
  accepts_nested_attributes_for :travellers

  monetize :price_cents

  # after_create :new_traveller

  def new_traveller
    traveller = Traveller.new
    traveller.booking = self
    traveller.save!
  end

  def set_price
    self.price_cents = ( self.budget_pp * self.number_traveller * 100 )
    self.save!
  end

  # def delete_traveller
  #   self.traveller.last.destroy
  # end

  def send_confirmation_sms

    TwilioService.new("booking.phone").confirmation

  end

  def send_weather_sms
  end

end
