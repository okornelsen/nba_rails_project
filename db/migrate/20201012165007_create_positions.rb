class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.String :Position

      t.timestamps
    end
  end
end