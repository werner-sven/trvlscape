class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.string :city
      t.string :country
      t.string :climate
      t.integer :price
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :flight_departure_time
      t.string :accommodation_type

      t.timestamps
    end
  end
end
