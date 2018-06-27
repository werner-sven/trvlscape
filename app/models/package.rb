class Package < ApplicationRecord
  has_many :package_origins
  has_many :origins, through: :package_origins
  belongs_to :type

  monetize :price_cents

  def get_wheather
    WheatherService.new
  end
end
