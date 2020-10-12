class CreateFans < ActiveRecord::Migration[6.0]
  def change
    create_table :fans do |t|
      t.string :full_Name

      t.timestamps
    end
  end
end
