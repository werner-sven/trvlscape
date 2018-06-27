class Booking < ApplicationRecord
  validates :origin, presence: true
  validates :budget_pp, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 150, less_than_or_equal_to: 1000 }
  validates :climate, presence: true, inclusion: { in: %w(warm cold surprise),
    message: "%{value} is not a valid climate" }
  validates :accommodation_type, presence: true, inclusion: { in: ["Hostel", "Hotel", "Bed and Breakfast", "Luxury Hotel"]}
  validates :type_id, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 4 }
  validates :number_traveller, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 6 }
  validates :start_time, presence: true
  validate :start_time_cannot_be_in_the_past

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
    traveller.save
  end

  def set_price
    self.price_cents = ( self.budget_pp * self.number_traveller * 100 )
    self.save
  end

   def send_confirmation_sms
    TwilioService.new("booking.phone").confirmation
  end

  def send_weather_sms
  end

  def match_to_package
    packages = Package.all
    if self.climate != "surprise"
      packages = packages.select {|pack| (pack.climate == self.climate) }
    end
    if self.type_id != 4
      packages = packages.select {|pack| (pack.type_id == self.type_id) }
    end
    self.package = packages.sample
    self.package.accommodation_type = self.accommodation_type
    self.package.start_date = self.start_time
    self.package.save
  end

  private
    def start_time_cannot_be_in_the_past
      errors.add(:start_time, "can't be in the past") if
        !start_time.blank? and start_time < Date.today
    end
end
