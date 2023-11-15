# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

restaurants = [
  {
    name: "Le Petit Chinois",
    address: "123 Rue de la Chine, Paris",
    phone_number: "01 23 45 67 89",
    category: "chinese"
  },
  {
    name: "La Trattoria",
    address: "456 Via della Pizza, Rome",
    phone_number: "02 34 56 78 90",
    category: "italian"
  },
  {
    name: "Sushi Palace",
    address: "789 Tokyo Street, Tokyo",
    phone_number: "03 45 67 89 01",
    category: "japanese"
  },
  {
    name: "La Baguette Magique",
    address: "234 Rue de la Magie, Paris",
    phone_number: "04 56 78 90 12",
    category: "french"
  },
  {
    name: "Belgian Delight",
    address: "567 Grand Place, Brussels",
    phone_number: "05 67 89 01 23",
    category: "belgian"
  }
]

restaurants.each do |restaurant_params|
  restaurant = Restaurant.create!(restaurant_params)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
