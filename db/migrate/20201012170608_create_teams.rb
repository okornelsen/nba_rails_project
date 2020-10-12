class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :city
      t.string :name
      t.string :abbreviation
      t.string :general_Manager
      t.string :head_Coach
      t.references :arena, null: false, foreign_key: true

      t.timestamps
    end
  end
end
