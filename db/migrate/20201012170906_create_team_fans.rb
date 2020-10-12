class CreateTeamFans < ActiveRecord::Migration[6.0]
  def change
    create_table :team_fans do |t|
      t.references :team, null: false, foreign_key: true
      t.references :fan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
