class AddDetailsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :number_traveller, :integer
    add_column :bookings, :accommodation_type, :string
    add_column :bookings, :start_date, :date
    add_column :bookings, :start_time, :time
  end
end
