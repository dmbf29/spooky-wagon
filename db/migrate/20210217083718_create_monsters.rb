class CreateMonsters < ActiveRecord::Migration[6.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :image_url
      t.string :species
      t.references :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
