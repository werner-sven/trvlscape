class Traveller < ApplicationRecord
  belongs_to :booking
  belongs_to :user, optional: true

  validates :first_name, presence: true, on: :update
  validates :last_name, presence: true,  on: :update
  validates :passport_number, presence: true, on: :update


  # add rest of validations later so testing is easier
  validates :passport_expiration, presence: true, on: :update
  validate :passport_expiration_cannot_be_in_the_past, on: :update
  validates :nationality, presence: true, on: :update
  validates :birth_date, presence: true, on: :update

  private
    def passport_expiration_cannot_be_in_the_past
      errors.add(:passport_expiration, "can't be in the past") if
        !passport_expiration.blank? and passport_expiration < Date.today
    end

end
