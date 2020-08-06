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
  {name: "Buy a birthday cake", address: "延安西路129号华侨大厦5楼XNode", description: "Help me buy a chocolate birthday cake with budget 200RMB and deliver it by 5pm, thanks!", price: 49.9, user: User.all.sample},

  {name: "Walk my dog on the weekend", address: "Taian Road 125", description: "I'm going on a business trip on the weeekend and need someone to walk my dog around 8pm both on Saturday AND Sunday.", price: 60, user: User.all.sample},

  {name: "Show me around Shanghai", address: "Weflow Hostel, Xintiandi", description: "Looking for a local who can show me around Shanghai for a half day. I'm interested in history and arts.", price: 120, user: User.all.sample},

  {name: "Help me move", address: "Jingan Temple", description: "Help me move on Saturday afternoon", price: 180, user: User.all.sample},

  {name: "Help me with ICP Beian process", address: "Huaqiao Dasha 5th floor", description: "Looking for someone with experiences to walk me through the ICP Beian process for my website.", price: 500, user: User.all.sample}
]
Gig.create(gigs)

bids = [
  {price: 99.99, phone_number: 12345678900, address: "华侨大厦LeWagon", note: "I'm the best candidate for this favor!", user: User.all.sample, gig:Gig.all.sample},

  {price: 88.88, phone_number: 12345678900, address: "Yan'an Xilu 87", note: "I have lots of experiences for this.", user: User.all.sample, gig:Gig.all.sample},

  {price: 77.77, phone_number: 12345678900, address: "Huashan Beilu 520", note: "I'd love to help!", user: User.all.sample, gig:Gig.all.sample},
  
  {price: 66.66, phone_number: 12345678900, address: "Xiangyang Beilu 27", note: "Hey I happen to have free time to help!", user: User.all.sample, gig:Gig.all.sample},
  
  {price: 55.55, phone_number: 12345678900, address: "Xujiahui Park", note: "I live nearby and would love to help.", user: User.all.sample, gig:Gig.all.sample},
  
  {price: 44, phone_number: 12345678900, address: "Huaihai Xilu 45", note: "Hey I'm glad to help!", user: User.all.sample, gig:Gig.all.sample},
  
  {price: 33, phone_number: 12345678900, address: "Wulumuqi Beilu 67", note: "Hey I can solve this problem!", user: User.all.sample, gig:Gig.all.sample},
  
  {price: 22.22, phone_number: 12345678900, address: "衡山路56号", note: "I'm happy to do it!", user: User.all.sample, gig:Gig.all.sample},

  {price: 11, phone_number: 12345678900, address: "Jiangsu Lu 66", note: "Hey I can help!", user: User.all.sample, gig:Gig.all.sample}
]
Bid.create(bids)

# 3.times do
#   Bid.create!(selected: false,
#               user: User.all.sample,
#               gig: Gig.all.sample)
# end
