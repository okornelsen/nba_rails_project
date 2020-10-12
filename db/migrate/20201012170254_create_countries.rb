class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :region
      t.integer :population

      t.timestamps
    end
  end
end
