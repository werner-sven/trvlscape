puts "Only seed after creating a new development database"


#Type.all.delete_all
#puts "All Types Deleted - #{Type.all.length}"
#Type.create(name: "Adventure")
#Type.create(name: "Culture")
#Type.create(name: "Relaxation")
#Type.create(name: "Surprise")cold

# Booking.all.delete_all
# puts "All Bookings Deleted - #{Booking.all.length}"
# Booking.create(status: "Pending", origin: "Freiburg", budget_pp: 300, excluded_countries: "Germany", climate: "
#   Warm", type_id: 1, number_traveller: 2, accommodation_type: "Hotel", start_time: DateTime.new(2018,9,1,17), price: 1)

puts "Types created"

Package.create!( city: "Marrakech", country: "Marocco", climate: "warm", type_id: 1, lat: "31.629472", long: "-7.981084" )
Package.create!( city: "Cappadocia", country: "Turkey", climate: "warm", type_id: 1, lat: "38.644378", long: "34.833267" )
Package.create!( city: "Kakslauttanen", country: "Finland", climate: "cold", type_id: 1, lat: "68.334235", long: "27.334750" )
Package.create!( city: "Reykjavik", country: "Iceland", climate: "cold", type_id: 1, lat: "64.126521", long: "-21.817439" )
Package.create!( city: "Paris", country: "France", climate: "warm", type_id: 2, lat: "48.856614", long: "2.352222" )
Package.create!( city: "Lisbon", country: "Portugal", climate: "warm", type_id: 2, lat: "38.722252", long: "-9.139337" )
Package.create!( city: "Stockholm", country: "Sweden", climate: "cold", type_id: 2, lat: "59.329323", long: "18.068581" )
Package.create!( city: "Vienna", country: "Austria", climate: "cold", type_id: 2, lat: "48.208174", long: "16.373819" )
Package.create!( city: "Meteora", country: "Greece", climate: "warm", type_id: 3, lat: "39.721704", long: "21.630590" )
Package.create!( city: "Cinque Terre", country: "Italy", climate: "warm", type_id: 3, lat: "44.148772", long: "9.654408" )
Package.create!( city: "Landmannalaugar", country: "Iceland", climate: "cold", type_id: 3, lat: "63.983000", long: "-19.067000" )
Package.create!( city: "Dordogne", country: "France", climate: "cold", type_id: 3, lat: "45.146949", long: "0.757221" )

puts "Number of packages #{Package.all.count}"
