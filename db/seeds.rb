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
Booking.destroy_all
Lesson.destroy_all
Teacher.destroy_all
User.destroy_all

p "Creating users...."
20.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password123",
    background: Faker::Lorem.sentence(3),
    )
end

p "Creating teachers...."
20.times do
  Teacher.create(
    background: Faker::Lorem.paragraph,
    user_id: User.all.sample.id
    )
end

p "Creating lessons...."
Lesson.create(
  name: "French 101",
  category: "Languages",
  description: Faker::Lorem.sentence(3),
  price_cents: 400,
  teacher_id: Teacher.all.sample.id,
  time: 25,
  sku: 'french',
  picture: "https://media-cdn.tripadvisor.com/media/photo-s/0d/f4/db/9e/paris-in-one-day-sightseeing.jpg",
  video_url: "ujDtm0hZyII"
)
Lesson.create(
  name: "Home gardening",
  category: "Lifestyle",
  description: Faker::Lorem.sentence(3),
  price_cents: 300,
  teacher_id: Teacher.all.sample.id,
  time: 21,
  sku: 'gardening',
  picture: "https://media.angieslist.com/s3fs-public/styles/widescreen_large/s3/s3fs-public/home-garden.JPG?37enwB2E.rbKnI5YrW6JZ_irCpGbr5ct&itok=Usbna66n",
  video_url: "6fR76wIrQ2I"
)

Lesson.create(
  name: "How to write your CV",
  category: "Languages",
  description: Faker::Lorem.sentence(3),
  price_cents: 500,
  teacher_id: Teacher.all.sample.id,
  time: 20,
  sku: 'cv-writing',
  picture: "https://images.unsplash.com/photo-1524591431555-cc7876d14adf?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5f16cff8aab12fca7983772cc1e5272b&auto=format&fit=crop&w=900&q=60",
  video_url: "fZclFtagPic"
)

Lesson.create(
  name: "Morning Yoga",
  category: "Lifestyle",
  description: Faker::Lorem.sentence(3),
  price_cents: 300,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'yoga',
  picture: "https://upaya-yoga.com/wp-content/uploads/2017/12/yoga.jpg",
  video_url: "Is8tMCpv4F8"
)
Lesson.create(
  name: "Ruby on Rails Intro",
  category: "Technology",
  description: Faker::Lorem.sentence(3),
  price_cents: 1500,
  teacher_id: Teacher.all.sample.id,
  time: 62,
  sku: 'ruby-on-rails',
  picture: "https://images.unsplash.com/photo-1519397154350-533cea5b8bff?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=009599aa0979619a04f21ec0d5486955&auto=format&fit=crop&w=900&q=60",
  video_url: "pPy0GQJLZUM"
)

Lesson.create(
  name: "College Essay Writing",
  category: "Languages",
  description: Faker::Lorem.sentence(3),
  price_cents: 2000,
  teacher_id: Teacher.all.sample.id,
  time: 21,
  sku: 'college-writing',
  picture: "https://thoughtcatalog.files.wordpress.com/2016/07/img_4711.jpeg?resize=1983,1983&quality=95&strip=all&crop=1",
  video_url: "IN6IOSMviS4"
)


Lesson.create(
  name: "Digital Marketing",
  category: "Technology",
  description: Faker::Lorem.sentence(3),
  price_cents: 500,
  teacher_id: Teacher.all.sample.id,
  time: 40,
  sku: 'digital-marketing',
  picture: "https://images.unsplash.com/photo-1523006520266-d3a4a8152803?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=9f72708186012faffab3b4c3b2ca1396&auto=format&fit=crop&w=900&q=60",
  video_url: "JsEuQnJEWy0"
)


Lesson.create(
  name: "Spanish Crash Course",
  category: "Languages",
  description: Faker::Lorem.sentence(3),
  price_cents: 400,
  teacher_id: Teacher.all.sample.id,
  time: 50,
  sku: 'spanish',
  picture: "https://imagesvc.timeincapp.com/v3/mm/image?url=http%3A%2F%2Fcdn-image.travelandleisure.com%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F1600x1000%2Fpublic%2F1513186027%2Fmadrid-spain-EUROPEROUTES1217.jpg",
  video_url: "krN3LI_1xiw"
)

Lesson.create(
  name: "SEO Mastering",
  category: "Technology",
  description: Faker::Lorem.sentence(3),
  price_cents: 2000,
  teacher_id: Teacher.all.sample.id,
  time: 48,
  sku: 'seo',
  picture: "https://images.unsplash.com/photo-1516321497487-e288fb19713f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=cbbd27149a8243a42eb2bd0bd918ba8f&auto=format&fit=crop&w=900&q=60",
  video_url: "sxunqv243E"
)

Lesson.create(
  name: "Introduction to React",
  category: "Technology",
  description: Faker::Lorem.sentence(3),
  price_cents: 2500,
  teacher_id: Teacher.all.sample.id,
  time: 118,
  sku: 'react',
  picture: "https://images.unsplash.com/photo-1454165205744-3b78555e5572?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=863ffeea823f0ffb0885fe1a5e77e645&auto=format&fit=crop&w=900&q=60",
  video_url: "ZTT9kw3PIE"
)


Lesson.create(
  name: "DIY Jewelry",
  category: "Lifestyle",
  description: Faker::Lorem.sentence(3),
  price_cents: 1000,
  teacher_id: Teacher.all.sample.id,
  time: 42,
  sku: 'jewelry',
  picture: "https://images.pexels.com/photos/744563/pexels-photo-744563.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  video_url: "04bhghGGvTg"
)

Lesson.create(
  name: "Zumba",
  category: "Lifestyle",
  description: Faker::Lorem.sentence(3),
  price_cents: 1500,
  teacher_id: Teacher.all.sample.id,
  time: 52,
  sku: 'zumba',
  picture: "http://www.theshillongtimes.com/wp-content/uploads/2017/06/Dos-donts-before-joining-zumba-classes.jpg",
  video_url: "7OBUSTrZOMk"
)

Lesson.create(
  name: "Life Coaching Level II",
  category: "Lifestyle",
  description: Faker::Lorem.sentence(3),
  price_cents: 1000,
  teacher_id: Teacher.all.sample.id,
  time: 32,
  sku: 'life-coaching',
  picture: "http://willingness.com.mt/wp-content/uploads/2017/11/life-coach.jpg",
  video_url: "QaAflKVvu-Y"
)

Lesson.create(
  name: "Agile Methodology Intro",
  category: "Technology",
  description: Faker::Lorem.sentence(3),
  price_cents: 500,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'psychology',
  picture: "https://images.unsplash.com/photo-1459499362902-55a20553e082?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=4881004bfd0d7db0e9b507cdabe0e3cf&auto=format&fit=crop&w=900&q=60",
  video_url: "QaAflKVvu-Y"
)

Lesson.create(
  name: "How to hire the right people",
  category: "Business",
  description: Faker::Lorem.sentence(3),
  price_cents: 900,
  teacher_id: Teacher.all.sample.id,
  time: 120,
  sku: 'hr',
  picture: "https://images.tech.co/wp-content/uploads/2012/07/HireTopTalent.jpg",
  video_url: "JPHVeQ7-ynA"
)


Lesson.create(
  name: "Anatomy drawing",
  category: "Lifestyle",
  description: Faker::Lorem.sentence(3),
  price_cents: 1500,
  teacher_id: Teacher.all.sample.id,
  time: 57,
  sku: 'drawing',
  picture: "https://i.imgur.com/iLZjewH.jpg",
  video_url: "KG6UefYiWFc"
)

Lesson.create(
  name: "Master CSS",
  category: "Technology",
  description: Faker::Lorem.sentence(3),
  price_cents: 1000,
  teacher_id: Teacher.all.sample.id,
  time: 32,
  sku: 'css',
  picture: "https://udemy-images.udemy.com/course/750x422/511378_06a7.jpg",
  video_url: "kg6BSkKpLSk"
)

Lesson.create(
  name: "How to write your first novel",
  category: "Languages",
  description: Faker::Lorem.sentence(3),
  price_cents: 800,
  teacher_id: Teacher.all.sample.id,
  time: 60,
  sku: 'novel-writing',
  picture: "https://images.pexels.com/photos/373076/pexels-photo-373076.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350",
  video_url: "kg6BSkKpLSk"
)

Lesson.create(
  name: "Oil Painting basics",
  category: "Lifestyle",
  description: Faker::Lorem.sentence(3),
  price_cents: 500,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'painting',
  picture: "https://images.pexels.com/photos/102127/pexels-photo-102127.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350",
  video_url: "kg6BSkKpLSk"
)

Lesson.create(
  name: "Accounting 101",
  category: "Business",
  description: Faker::Lorem.sentence(3),
  price_cents: 1000,
  teacher_id: Teacher.all.sample.id,
  time: 60,
  sku: 'accounting',
  picture: "https://images.pexels.com/photos/53621/calculator-calculation-insurance-finance-53621.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  video_url: "kg6BSkKpLSk"
)

p "Creating bookings....."


10.times do
Booking.create(
  user_id: User.all.sample.id,
  lesson_id: Lesson.all.sample.id
  )
end




