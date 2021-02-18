class CreateMonsterPowers < ActiveRecord::Migration[6.0]
  def change
    create_table :monster_powers do |t|
      t.references :power, null: false, foreign_key: true
      t.references :monster, null: false, foreign_key: true

      t.timestamps
    end
  end
end
