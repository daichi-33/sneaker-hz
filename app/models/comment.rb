class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :sneaker

  validates :content, presence: true
end
