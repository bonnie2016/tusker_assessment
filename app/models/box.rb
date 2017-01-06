class Box < ApplicationRecord
  validates :code, presence: true, uniqueness: true

  has_many :box_contents
  has_many :contents, :through => :box_contents

end
