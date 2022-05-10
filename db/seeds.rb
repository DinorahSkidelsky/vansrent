# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Van.destroy_all
Reservation.destroy_all
Review.destroy_all

u1 = User.create!(
  first_name: "Tom",
  last_name: "Levis",
  email: 'tomlevis@gmail.com',
  password: '123456',
  password_confirmation: '123456'
)

u2 = User.create!(
  first_name: "Robert",
  last_name: "Parkinson",
  email: 'rebertparkinson@gmail.com',
  password: '123456',
  password_confirmation: '123456'
)

u3 = User.create!(
  first_name: "Brad",
  last_name: "Cage",
  email: 'bradcage@gmail.com',
  password: '123456',
  password_confirmation: '123456'
)

v1 = Van.new(
  description: 'Citröen Jumper, Diesel',
  brand: 'Citröen',
  model: 'Jumper',
  place: 'Rome',
  price: 80
)
v1.user = u1
v1.save

v2 = Van.new(
  description: 'Van Mercedes, Diesel',
  brand: 'Mercedez Benz',
  model: 'Marco Polo',
  place: 'London',
  price: 75
)
v2.user = u2
v2.save

v3 = Van.new(
  description: 'Volkswagen Kombi, Nafta',
  brand: 'Volkswagen',
  model: 'Transporter',
  place: 'Barcelona',
  price: 95
)
v3.user = u3
v3.save

v4 = Van.new(
  description: 'Fiat Van, Diesel',
  brand: 'Fiat',
  model: 'Idea',
  place: 'Stockholm',
  price: 65
)
v4.user = u3
v4.save

v5 = Van.new(
  description: 'Chevrolet Super Kombi, Nafta',
  brand: 'Chevrolet',
  model: 'Silverado',
  place: 'Paris',
  price: 90
)
v5.user = u2
v5.save

v6 = Van.new(
  description: 'Dally Track, Diesel',
  brand: 'Dally Track',
  model: 'Texas',
  place: 'Budapest',
  price: 75
)
v6.user = u1
v6.save

r1 = Reservation.new(
  start_time: DateTime.new(2022,5,11,20,0,0),
  end_time: DateTime.new(2022,6,11,20,0,0)
)
r1.user = u1
r1.van = v1
r1.save

r2 = Reservation.new(
  start_time: DateTime.new(2022,6,23,20,0,0),
  end_time: DateTime.new(2022,6,28,20,0,0)
)
r2.user = u2
r2.van = v2
r2.save

r3 = Reservation.new(
  start_time: DateTime.new(2022,10,12,15,0,0),
  end_time: DateTime.new(2022,10,18,15,0,0),
)
r3.user = u3
r3.van = v3
r1.save

rw1 = Review.new(
  comment:'Excellent trip with this van!',
  rating: 4,
  reservation_id: 1
)
rw1.reservation = r1
rw1.save
rw2 = Review.new(
  comment:'100% recommended owner and truck',
  rating: 5
)
rw2.reservation = r2
rw2.save

rw3 = Review.new(
  comment:'Motorhome very reliable, very good comfort',
  rating: 5
)
rw3.reservation = r3
rw3.save
