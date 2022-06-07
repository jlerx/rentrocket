# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Offer.destroy_all

user1 = User.create(
  email: "toto@gmail.com",
  password: "toto"
)

Offer.create(
  title: "Ferrari 488GTB",
  price: "300",
  brand: "Ferrari",
  model: "488 GTB SPIDER",
  horsepower: "500",
  km_age: "1500",
  body_type: "3",
  user: user
)
