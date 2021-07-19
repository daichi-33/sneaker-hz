class Sneaker < ApplicationRecord
  belongs_to :user

  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :image
    validates :detail
  end
end
