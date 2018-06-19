class Booking < ApplicationRecord
  has_many :travellers
  belongs_to :package
  belongs_to :user
  belongs_to :type
end
