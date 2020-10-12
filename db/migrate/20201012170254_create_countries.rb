class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.String :Name
      t.String :Region
      t.Integer :Population

      t.timestamps
    end
  end
end
