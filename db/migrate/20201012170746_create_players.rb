class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.String :Full_Name
      t.Integer :Rating
      t.Integer :Jersey_No
      t.String :Birthday
      t.String :Height
      t.Integer :Weight
      t.Float :Salary
      t.references :Country, null: false, foreign_key: true
      t.references :Team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
