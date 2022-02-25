class Gamelist < ApplicationRecord
  belongs_to :user
  has_many :gamelists, class_name: :gamelist", foreign_key: "reference_id", dependent: :destroy

  validates :title, presence: true, length: { maximun: 255 }
  validates :body, presence: true, length: { maximun: 65_535 }

end
