puts "Deleting old records..."
Property.destroy_all
Announce.destroy_all

puts "Creating property..."
Property.create(name: "Appartement")
Property.create(name: "Maison")
Property.create(name: "Local Commercial")