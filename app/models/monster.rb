class Monster < ApplicationRecord
  belongs_to :house
  has_many :monster_powers, dependent: :destroy
  has_many :powers, through: :monster_powers
  # monster.powers
  validates :name, presence: true
  # validates :image_url, presence: true
  has_one_attached :photo
end
