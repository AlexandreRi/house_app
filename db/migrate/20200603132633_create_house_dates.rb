class CreateHouseDates < ActiveRecord::Migration[6.0]
  def change
    create_table :house_dates do |t|
      t.date "date"
      t.bigint "house_id", null: false
      t.bigint "profile_id", null: false
      t.timestamps
    end
  end
end
