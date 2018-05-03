# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Lesson.destroy_all
Teacher.destroy_all
Booking.destroy_all

20.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.zip_code},
     #{Faker::Address.state}, #{Faker::Address.country}",
    gender: ["female", "male"].sample,
    email: Faker::Internet.email,
    password: "password123",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
    )
end
