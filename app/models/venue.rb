class Venue < ApplicationRecord
  has_one_attached :image
  
  validates :title, presence: true
  validates :image, presence: true

  has_many :comments,dependent: :destroy
  belongs_to :user
end
