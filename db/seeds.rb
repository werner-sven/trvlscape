puts "Only seed after creating a new development database"


Type.all.delete_all
puts "All Types Deleted - #{Type.all.length}"
Type.create(name: "Adventure")
Type.create(name: "Culture")
Type.create(name: "Relaxation")
Type.create(name: "Surprise")

puts "Types created"
