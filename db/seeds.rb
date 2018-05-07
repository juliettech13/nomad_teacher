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
    background: Faker::Lorem.paragraph,
    )
end

p "Creating teachers...."
20.times do
  Teacher.create(
    background: Faker::Lorem.paragraph,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    user_id: User.all.sample.id
    )
end

p "Creating lessons...."
Lesson.create(
  name: "French 101",
  category: "Languages & Writing",
  description: Faker::Lorem.paragraph,
  price_cents: 400,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'french',
  picture: "https://media-cdn.tripadvisor.com/media/photo-s/0d/f4/db/9e/paris-in-one-day-sightseeing.jpg"
)

Lesson.create(
  name: "Morning Yoga",
  category: "Lifestyle",
  description: Faker::Lorem.paragraph,
  price_cents: 300,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'yoga',
  picture: "https://upaya-yoga.com/wp-content/uploads/2017/12/yoga.jpg"
)

Lesson.create(
  name: "How to write your CV",
  category: "Languages & Writing",
  description: Faker::Lorem.paragraph,
  price_cents: 500,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'cv-writing',
  picture: "https://images.unsplash.com/photo-1508780709619-79562169bc64?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=0d483d533558787d2af4870954d6418e&auto=format&fit=crop&w=900&q=60"
)

Lesson.create(
  name: "College Essay Writing",
  category: "Languages & Writing",
  description: Faker::Lorem.paragraph,
  price_cents: 2000,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'college-writing',
  picture: "https://thoughtcatalog.files.wordpress.com/2016/07/img_4711.jpeg?resize=1983,1983&quality=95&strip=all&crop=1"
)

Lesson.create(
  name: "Ruby on Rails Intro",
  category: "Tech",
  description: Faker::Lorem.paragraph,
  price_cents: 1500,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'ruby-on-rails',
  picture: "http://res.cloudinary.com/jules/image/upload/v1525453514/nomad_teacher/ruby_on_rails.png"

)

Lesson.create(
  name: "Digital Marketing",
  category: "Tech",
  description: Faker::Lorem.paragraph,
  price_cents: 500,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'digital-marketing',
  picture: "https://www.mytechlogy.com/upload/by_users/IramSaeed/301801114638digitalmarketing.jpg"
)


Lesson.create(
  name: "Spanish Crash Course",
  category: "Languages & Writing",
  description: Faker::Lorem.paragraph,
  price_cents: 400,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'spanish',
  picture: "https://imagesvc.timeincapp.com/v3/mm/image?url=http%3A%2F%2Fcdn-image.travelandleisure.com%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F1600x1000%2Fpublic%2F1513186027%2Fmadrid-spain-EUROPEROUTES1217.jpg"
)

Lesson.create(
  name: "SEO Mastering",
  category: "Tech",
  description: Faker::Lorem.paragraph,
  price_cents: 2000,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'seo',
  picture: "https://cdn.rswebsols.com/wp-content/uploads/2016/11/Why-SEO-Marketing-is-Important-for-Startup.jpg"
)

Lesson.create(
  name: "Introduction to React",
  category: "Tech",
  description: Faker::Lorem.paragraph,
  price_cents: 2500,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'react',
  picture: "https://cdn-images-1.medium.com/max/1600/1*wj5ujzj5wPQIKb0mIWLgNQ.png"
)


Lesson.create(
  name: "DIY Jewelry",
  category: "Lifestyle",
  description: Faker::Lorem.paragraph,
  price_cents: 1000,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'jewelry',
  picture: "https://images.pexels.com/photos/744563/pexels-photo-744563.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
)

Lesson.create(
  name: "Zumba",
  category: "Lifestyle",
  description: Faker::Lorem.paragraph,
  price_cents: 1500,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'zumba',
  picture: "http://www.theshillongtimes.com/wp-content/uploads/2017/06/Dos-donts-before-joining-zumba-classes.jpg"
)

Lesson.create(
  name: "Life Coaching Level II",
  category: "Lifestyle",
  description: Faker::Lorem.paragraph,
  price_cents: 700,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'life-coaching',
  picture: "http://willingness.com.mt/wp-content/uploads/2017/11/life-coach.jpg"
)

Lesson.create(
  name: "Psychology for Business Owners",
  category: "Business",
  description: Faker::Lorem.paragraph,
  price_cents: 600,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'psychology',
  picture: "https://images.unsplash.com/photo-1459499362902-55a20553e082?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=4881004bfd0d7db0e9b507cdabe0e3cf&auto=format&fit=crop&w=900&q=60"
)

Lesson.create(
  name: "How to hire the right people",
  category: "Business",
  description: Faker::Lorem.paragraph,
  price_cents: 900,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'hr',
  picture: "https://images.tech.co/wp-content/uploads/2012/07/HireTopTalent.jpg"
)

Lesson.create(
  name: "Home gardening",
  category: "Lifestyle",
  description: Faker::Lorem.paragraph,
  price_cents: 2000,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'gardening',
  picture: "https://media.angieslist.com/s3fs-public/styles/widescreen_large/s3/s3fs-public/home-garden.JPG?37enwB2E.rbKnI5YrW6JZ_irCpGbr5ct&itok=Usbna66n"
)

Lesson.create(
  name: "Anatomy drawing",
  category: "Lifestyle",
  description: Faker::Lorem.paragraph,
  price_cents: 1500,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'drawing',
  picture: "https://i.imgur.com/iLZjewH.jpg"
)

Lesson.create(
  name: "Master CSS",
  category: "Tech",
  description: Faker::Lorem.paragraph,
  price_cents: 1000,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'css',
  picture: "https://udemy-images.udemy.com/course/750x422/511378_06a7.jpg"
)

Lesson.create(
  name: "How to write your first novel",
  category: "Languages & Writing",
  description: Faker::Lorem.paragraph,
  price_cents: 800,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'novel-writing',
  picture: "https://images.pexels.com/photos/373076/pexels-photo-373076.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350"
)

Lesson.create(
  name: "Painting basics",
  category: "Lifestyle",
  description: Faker::Lorem.paragraph,
  price_cents: 500,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'painting',
  picture: "https://images.pexels.com/photos/102127/pexels-photo-102127.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350"
)

Lesson.create(
  name: "Accounting for your business 101",
  category: "Business",
  description: Faker::Lorem.paragraph,
  price_cents: 1000,
  teacher_id: Teacher.all.sample.id,
  time: [60, 80, 90, 120, 200].sample,
  sku: 'accounting',
  picture: "https://images.pexels.com/photos/53621/calculator-calculation-insurance-finance-53621.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
)

p "Creating bookings....."


10.times do
Booking.create(
  user_id: User.all.sample.id,
  lesson_id: Lesson.all.sample.id
  )
end




