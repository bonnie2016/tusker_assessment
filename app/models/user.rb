class User < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }

  has_many :orders
  has_many :contents, :through => :orders
end
