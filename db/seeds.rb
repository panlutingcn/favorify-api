require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  User.create!(name: Faker::Name.name)
end

5.times do
  Gig.create!(name: Faker::Job.title, 
              address: Faker::Address.full_address,
              description: Faker::Job.field,
              price: 49,
              user: User.all.sample)
end

3.times do
  Bid.create!(selected: false,
              user: User.all.sample,
              gig: Gig.all.sample)
end
