class Origin < ApplicationRecord
  has_many :package_origins
  has_many :packages, through: :package_origins
end
