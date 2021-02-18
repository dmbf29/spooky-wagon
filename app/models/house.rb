class House < ApplicationRecord
  has_many :monsters, dependent: :destroy
  # house.monsters
  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
end
