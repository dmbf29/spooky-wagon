class Power < ApplicationRecord
  has_many :monster_powers
  has_many :monsters, through: :monster_powers
  validates :name, presence: true, uniqueness: true

  # def to_label
  #   name
  # end
end
