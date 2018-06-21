class Traveller < ApplicationRecord
  belongs_to :booking
  belongs_to :user, optional: true

  # validates :first_name, presence: true, length: {minimum: 2, maximum: 300}, on: :update
  # validates :last_name, presence: true, length: {minimum: 2, maximum: 300}, on: :update
  # validates :passport_number, presence: true, length: {minimum: 2, maximum: 300}, on: :update


  # # add rest of validations later so testing is easier
  # validates :passport_expiration, presence: true, on: :update
  # validates :nationality, presence: true, on: :update
  # validates :birth_date, presence: true, on: :update

end
