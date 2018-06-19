class Traveller < ApplicationRecord
  belongs_to :booking
  belongs_to :user, optional: true

end
