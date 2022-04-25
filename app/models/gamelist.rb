class Gamelist < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { maximum: 140  }
  validates :body, presence: true
end
