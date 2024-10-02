require "json"
require "open-uri"

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# url = "https://www.themealdb.com/api/json/v1/1/filter.php?c=#{@category}"
# category_serialized = URI.parse(url).read
# @category = JSON.parse(category_serialized)

# puts "#{@category.name["name"]} - #{@category.description["description"]}"

url = "https://www.themealdb.com/api/json/v1/1/filter.php?c=#{@category.name}"
category_serialized = URI.parse(url).read
category = JSON.parse(category_serialized)

puts "#{category.name["name"]} - #{category.description["description"]}"

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
    rating: 9.5,
    image_url: "https://www.usdairy.com/getmedia/1a9efa87-5f85-4392-8a67-3836755be069/creamy_carbonara.jpg?width=1500&height=1001&ext=.jpg"
  },
  {
    name: "Chicken Tikka Masala",
    description: "A popular Indian dish with grilled marinated chicken simmered in a creamy tomato curry sauce.",
    rating: 8.8,
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYo6i5Nif8pf7FCNWjwhnkG_CI1VXYLDaBUA&s",
  },
  {
    name: "Beef Stroganoff",
    description: "A Russian comfort dish of sautéed beef in a rich, creamy mushroom sauce served over noodles.",
    rating: 8.2,
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSurr1btAiTq264orhOzH64TnhxzWS3VFPrsA&s"
  },
  {
    name: "Vegetarian Chili",
    description: "A hearty and spicy chili made with a variety of beans, tomatoes, and vegetables.",
    rating: 7.9,
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2KSlBnFzey4VDaKplO7FdD7x2CCg_3lO6tg&s"
  },
  {
    name: "Chocolate Lava Cake",
    description: "A decadent chocolate dessert with a molten center that flows when you cut into it.",
    rating: 9.7,
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJYg-bd41gp07DGUmjqX24KYf9f6GMce3OEw&s"
  }
])
