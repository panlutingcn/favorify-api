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

Bid.destroy_all
Gig.destroy_all

gigs = [

  {name: "Buy a birthday cake", address: "延安西路129号华侨大厦5楼XNode", description: "Help me buy a chocolate birthday cake with budget 200RMB and deliver it by 5pm, thanks!", price: 49, user: User.all.sample},

  {name: "Walk my dog on the weekend", address: "Taian Road 125", description: "I'm going on a business trip on the weeekend and need someone to walk my dog around 8pm both on Saturday AND Sunday.", price: 60, user: User.all.sample},

  {name: "Show me around Shanghai", address: "Weflow Hostel, Xintiandi", description: "Looking for a local who can show me around Shanghai for a half day. I'm interested in history and arts.", price: 120, user: User.all.sample},

  {name: "Help me move", address: "Jingan Temple", description: "Help me move on Saturday afternoon", price: 180, user: User.all.sample}

]

Gig.create(gigs)

# 3.times do
#   Bid.create!(selected: false,
#               user: User.all.sample,
#               gig: Gig.all.sample)
# end
