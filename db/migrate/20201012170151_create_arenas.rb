class CreateArenas < ActiveRecord::Migration[6.0]
  def change
    create_table :arenas do |t|
      t.String :Name
      t.String :Location

      t.timestamps
    end
  end
end
