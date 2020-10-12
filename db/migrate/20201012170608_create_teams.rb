class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.String :City
      t.String :Name
      t.String :Abbreviation
      t.String :General_Manager
      t.String :Head_Coach
      t.references :Arena, null: false, foreign_key: true

      t.timestamps
    end
  end
end
