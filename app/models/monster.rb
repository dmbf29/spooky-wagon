class Monster < ApplicationRecord
  belongs_to :house
  # monster.house
  validates :name, presence: true
  validates :image_url, presence: true
end
