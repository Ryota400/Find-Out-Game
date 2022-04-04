class Gamelist < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { maximum: 65_535  }
end
