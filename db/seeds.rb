# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'date'

p "Destroying everything..."
User.destroy_all
Lesson.destroy_all
Teacher.destroy_all
Booking.destroy_all

p "Creating users...."
20.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password123",
    background: Faker::Lorem.paragraph,
    )
end

p "Creating teachers...."
20.times do
  Teacher.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    background: Faker::Lorem.paragraph,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
    )
end

p "Creating lessons...."
Lesson.create(
  name: "Ruby on Rails Intro",
  category: "Tech",
  description: Faker::Lorem.paragraph,
  price: 1500,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "Digital Marketing",
  category: "Tech",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "French 101",
  category: "Languages & Writing",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "Spanish flirting",
  category: "Languages & Writing",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "SEO Mastering",
  category: "Tech",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "Introduction to React",
  category: "Tech",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "Morning Yoga",
  category: "Lifestyle",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "How to write your CV",
  category: "Languages & Writing",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "College Essay Writing",
  category: "Languages & Writing",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "DIY Jewelry",
  category: "Lifestyle",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "Zumba",
  category: "Lifestyle",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "Life Coaching Level II",
  category: "Lifestyle",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "Psychology for Business Owners",
  category: "Business",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "How to hire the right people",
  category: "Business",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "Home gardening",
  category: "Lifestyle",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "Anatomy drawing",
  category: "Lifestyle",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "Master CSS",
  category: "Tech",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "How to write your first novel",
  category: "Languages & Writing",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "Painting basics",
  category: "Lifestyle",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

Lesson.create(
  name: "Accounting for your business 101",
  category: "Business",
  description: Faker::Lorem.paragraph,
  price: 2000,
  teacher_id: Teacher.all.sample.id
)

p "Creating bookings....."


10.times do
Booking.create(
  user_id: User.all.sample.id,
  lesson_id: Lesson.all.sample.id
  )
end




