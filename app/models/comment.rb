class Comment < ApplicationRecord

  validates :live_name,    presence: true
  validates :content,    presence: true
  validates :cost,    presence: true

  belongs_to :venue
  belongs_to :user
end
