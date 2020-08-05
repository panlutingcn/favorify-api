json.gigs do
  json.array! @gigs do |gig|
    json.extract! gig, :name, :address, :description, :price
  end
end