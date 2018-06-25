puts "Only seed after creating a new development database"


Type.all.delete_all
puts "All Types Deleted - #{Type.all.length}"
Type.create(name: "Adventure")
Type.create(name: "Culture")
Type.create(name: "Relaxation")
Type.create(name: "Surprise")

Booking.all.delete_all
puts "All Bookings Deleted - #{Booking.all.length}"
Booking.create(status: "Pending", origin: "Freiburg", budget_pp: 300, excluded_countries: "Germany", climate: "
  Warm", type_id: 1, number_traveller: 2, accommodation_type: "Hotel", start_time: DateTime.new(2018,9,1,17), price: 1)

puts "Types created"
