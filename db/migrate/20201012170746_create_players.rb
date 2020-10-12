class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :full_Name
      t.integer :rating
      t.integer :jersey_No
      t.string :birthday
      t.string :height
      t.integer :weight
      t.float :salary
      t.references :country, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
