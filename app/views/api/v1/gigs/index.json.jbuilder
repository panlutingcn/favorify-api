json.gigs do
  json.array! @gigs do |gig|
    json.extract! gig, :id, :name, :address, :description, :price
  end
end