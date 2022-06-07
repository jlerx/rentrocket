# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Offer.destroy_all
User.destroy_all

img1 = URI.open("https://res.cloudinary.com/valentinmarcouxdev/image/upload/v1654609470/j5mk5eje6uphcww4lvw0.jpg")
img2 = URI.open("https://res.cloudinary.com/valentinmarcouxdev/image/upload/v1654609479/xaemzotsfxlzdo4h2mrl.jpg")

user1 = User.create(
  email: "toto@gmail.com",
  password: "totototo",
  password_confirmation: "totototo",
  name: "Clémence"
)

user2 = User.create(
  email: "valentin@gmail.com",
  password: "valentinvalentin",
  password_confirmation: "valentinvalentin",
  name: "Valentin"
)


user3 = User.create(
  email: "mathilde@gmail.com",
  password: "mathildemathilde",
  password_confirmation: "mathildemathilde",
  name: "Mathilde"
)

user4 = User.create(
  email: "julien@gmail.com",
  password: "julienjulien",
  password_confirmation: "julienjulien",
  name: "Julien"
)

vhl1 = Offer.create(
  title: "Ferrari 488GTB",
  price: "300",
  brand: "Ferrari",
  model: "488 GTB SPIDER",
  horsepower: "500",
  km_age: "1500",
  body_type: "3",
  user: user1
)

vhl2 = Offer.create(
  title: "Porsche Taycan RS",
  price: "350",
  brand: "Porsche",
  model: "TAYCAN RS",
  horsepower: "400",
  km_age: "15000",
  body_type: "5",
  user: user2
)

vhl3 = Offer.create(
  title: "Audi RS5",
  price: "400",
  brand: "Audi",
  model: "RS5",
  horsepower: "450",
  km_age: "12000",
  body_type: "4",
  user: user3
)

vhl4 = Offer.create(
  title: "Bentley Continental GT Cabriolet",
  price: "500",
  brand: "Bentley",
  model: "CONTINENTAL GT CABRIOLET",
  horsepower: "450",
  km_age: "12000",
  body_type: "4",
  user: user4
)

vhl5 = Offer.create(
  title: "Lamborghini Huracan Evo RWD ",
  price: "800",
  brand: "Lamborghini",
  model: "Huracan Evo RWD",
  horsepower: "325",
  km_age: "19000",
  body_type: "2",
  user: user2
)

vhl6 = Offer.create(
  title: "Honda Civic Type R",
  price: "400",
  brand: "Honda",
  model: "Civic Type R",
  horsepower: "320",
  km_age: "13000",
  body_type: "3",
  user: user1
)

vhl7 = Offer.create(
  title: "Chevrolet Corvette C8",
  price: "700",
  brand: "Chevrolet",
  model: "Corvette C8",
  horsepower: "450",
  km_age: "8000",
  body_type: "2",
  user: user2
)

vhl8 = Offer.create(
  title: "Mazda MX-5",
  price: "500",
  brand: "Mazda",
  model: "MX-5",
  horsepower: "370",
  km_age: "14000",
  body_type: "3",
  user: user4
)

vhl9 = Offer.create(
  title: "Volkswagen Golf GTI TCR",
  price: "350",
  brand: "Volkswagen",
  model: "Golf GTI TCR",
  horsepower: "370",
  km_age: "11000",
  body_type: "2",
  user: user2
)

vhl10 = Offer.create(
  title: "Subaru Impreza",
  price: "350",
  brand: "Subaru",
  model: "Impreza",
  horsepower: "480",
  km_age: "9500",
  body_type: "2",
  user: user4
)


vhl1.image.attach(io: img1, filename: 'ferrari.jpg', content_type: 'image/jpg')
vhl2.image.attach(io: img2, filename: 'porsche.jpg', content_type: 'image/jpg')
