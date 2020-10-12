class CreatePlayerPositions < ActiveRecord::Migration[6.0]
  def change
    create_table :player_positions do |t|
      t.references :Player, null: false, foreign_key: true
      t.references :Position, null: false, foreign_key: true

      t.timestamps
    end
  end
end
