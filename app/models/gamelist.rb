class Gamelist < ApplicationRecord
  belongs_to :user

  validates :title, length: { maximum: 140  }
  validates :body, presence: true
  validates :star, presence: true
  validates :gametitle, presence: true
end
