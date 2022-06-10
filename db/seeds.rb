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
img3 = URI.open("https://res.cloudinary.com/valentinmarcouxdev/image/upload/v1654692849/rskzkcabkumvllrgcuse.jpg")
img4 = URI.open("https://res.cloudinary.com/valentinmarcouxdev/image/upload/v1654692840/h13wxhad4ctcf7hvozlg.jpg")
img5 = URI.open("https://res.cloudinary.com/valentinmarcouxdev/image/upload/v1654692827/ojsxhoayus1wv0xtwpsr.jpg")
img6 = URI.open("https://res.cloudinary.com/valentinmarcouxdev/image/upload/v1654692834/vu8gsyjnnjd9kukm06pj.jpg")

puts ("Toutes les images ont été upload")

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

puts ("Tous les Users ont étés créées")

vhl1 = Offer.create(
  title: "Ferrari 488GTB",
  price: "300",
  brand: "Ferrari",
  model: "488 GTB SPIDER",
  horsepower: "500",
  km_age: "1500",
  body_type: "3",
  year: 1985,
  color: "red",
  address: "16 Villa Gaudelet, Paris",
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
  year: 2003,
  color: "black",
  address: "21 rue Haxo, Marseille",
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
  year: 2006,
  color: "yellow",
  address: "20 rue Paradis, Marseille",
  user: user3
)

vhl4 = Offer.create(
  title: "Bentley Continental",
  price: "500",
  brand: "Bentley",
  model: "CONTINENTAL GT CABRIOLET",
  horsepower: "450",
  km_age: "12000",
  body_type: "4",
  year: 1995,
  color: "red",
  address: "8 rue du cherche-midi, Paris",
  user: user4
)

vhl5 = Offer.create(
  title: "Lamborghini Huracan",
  price: "800",
  brand: "Lamborghini",
  model: "Huracan Evo RWD",
  horsepower: "325",
  km_age: "19000",
  body_type: "2",
  year: 1985,
  color: "black",
  address: "5 Avenue du Maréchal Foch, Biarritz",
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
  year: 2002,
  color: "yellow",
  address: "58 avenue de la République, Lyon",
  user: user1
)

puts ("Tous les véhicules ont été crées")

vhl1.image.attach(io: img1, filename: 'ferrari.jpg', content_type: 'image/jpg')
vhl2.image.attach(io: img2, filename: 'porsche.jpg', content_type: 'image/jpg')
vhl3.image.attach(io: img3, filename: 'honda.jpg', content_type: 'image/jpg')
vhl4.image.attach(io: img4, filename: 'lambo.jpg', content_type: 'image/jpg')
vhl5.image.attach(io: img5, filename: 'lambo.jpg', content_type: 'image/jpg')
vhl6.image.attach(io: img6, filename: 'honda.jpg', content_type: 'image/jpg')

puts ("Images attachées")

puts "address generate"
