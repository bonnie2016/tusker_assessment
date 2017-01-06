class Content < ApplicationRecord
  validates :item, presence: true, uniqueness: true

  has_many :orders
  has_many :users, :through => :orders
end
