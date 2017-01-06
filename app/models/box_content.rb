class BoxContent < ApplicationRecord
  # belongs_to :box
  belongs_to :content
  # validates :code, presence: true
  validates :code, uniqueness: { scope: :content_id, message: "Item already exists in the box" }
end
