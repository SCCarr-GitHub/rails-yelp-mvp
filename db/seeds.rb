# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
5.times do |i|
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: Faker::Food.restaurant_type,
    phone_number: Faker::PhoneNumber.phone_number
  )

  3.times do |j|
    review = Review.create!(
      content: Faker::Restaurant.review,
      rating: rand(1..5),
      restaurant: restaurant
    )
  end
end
