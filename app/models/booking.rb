class Booking < ApplicationRecord
  has_many :travellers
  belongs_to :package, required: false
  belongs_to :user, required: false
  belongs_to :type, required: false
  accepts_nested_attributes_for :travellers

  # after_create :new_traveller

  def new_traveller
    traveller = Traveller.new
    traveller.booking = self.id
    traveller.save!
  end

  def delete_traveller
    self.traveller.last.destroy
  end
end
