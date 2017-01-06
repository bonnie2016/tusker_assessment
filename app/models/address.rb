class Address < ApplicationRecord
  validates :city, presence: true, uniqueness: true

  has_many :orders
end
