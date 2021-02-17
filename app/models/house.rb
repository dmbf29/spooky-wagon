class House < ApplicationRecord
  has_many :monsters
  # house.monsters
  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
end
