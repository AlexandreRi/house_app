class AddDescriptionToHouse < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :description, :string
  end
end
