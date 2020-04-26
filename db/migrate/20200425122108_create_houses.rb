class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :address
      t.integer :price
      t.integer :rating

      t.timestamps
    end
  end
end
