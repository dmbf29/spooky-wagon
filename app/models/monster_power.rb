class MonsterPower < ApplicationRecord
  belongs_to :power
  belongs_to :monster
  validates :monster, uniqueness: { scope: :power }
end
