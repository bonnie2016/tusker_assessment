class Order < ApplicationRecord
  belongs_to :user
  belongs_to :content
  belongs_to :address

  validates :user_id, uniqueness: { scope: :content_id, message: "User has already received this item" }


end
