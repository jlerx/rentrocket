# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8)
  )
  user.save
end

10.times do
  offer = Offer.new(
    title: Faker::Lorem.paragraph(sentence_count: 2),
    price: Faker::Commerce.price,
    brand: Faker::Vehicle.manufacture,
    model: Faker::Vehicle.model,
    year: Faker::Vehicle.year,
    horsepower: rand(200..500),
    km_age: Faker::Vehicle.mileage,
    body_type: Faker::Vehicle.door_count,
    image: Faker::LoremFlickr.image(size: "2000x2000", search_terms: ['sports', 'car'])
  )
  offer.save
end

