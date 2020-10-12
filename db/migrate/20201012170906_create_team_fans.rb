class CreateTeamFans < ActiveRecord::Migration[6.0]
  def change
    create_table :team_fans do |t|
      t.references :Team, null: false, foreign_key: true
      t.references :Fan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
