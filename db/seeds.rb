# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 555_544_44, category: "Indian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: 444_444_44, category: "Italian"}
kricket = {name: "Kricket", address: "delicious food at soho", phone_number: 222_222_22, category: "Indian"}
core_by_clare_smith = {name: "Core by Clare Smith", address: "Notting Hill deliciousness", phone_number: 111_111_11, category: "Modern European"}
hoxton_100 = {name: "Hoxton 100", address: "100 High Street, Hoxton", phone_number: 000_000_00, category: "Filippino"}

[dishoom, pizza_east, kricket, core_by_clare_smith, hoxton_100].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
