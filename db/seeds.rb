# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb
Recipe.destroy_all

Category.create(name: 'Dessert')
Category.create(name: 'Vegeterian')
Category.create(name: 'Italian')
Category.create(name: 'Russian')
Category.create(name: 'Indian')

Recipe.create!([
  {
    name: "Spaghetti Carbonara",
    description: "A classic Italian pasta dish made with eggs, cheese, pancetta, and pepper.",
    rating: 9.5
  },
  {
    name: "Chicken Tikka Masala",
    description: "A popular Indian dish with grilled marinated chicken simmered in a creamy tomato curry sauce.",
    rating: 8.8
  },
  {
    name: "Beef Stroganoff",
    description: "A Russian comfort dish of sautéed beef in a rich, creamy mushroom sauce served over noodles.",
    rating: 8.2
  },
  {
    name: "Vegetarian Chili",
    description: "A hearty and spicy chili made with a variety of beans, tomatoes, and vegetables.",
    rating: 7.9
  },
  {
    name: "Chocolate Lava Cake",
    description: "A decadent chocolate dessert with a molten center that flows when you cut into it.",
    rating: 9.7
  }
])
