class Steam < ApplicationRecord
  validates :name, presence :true
  validates :appid, presence :true
end
