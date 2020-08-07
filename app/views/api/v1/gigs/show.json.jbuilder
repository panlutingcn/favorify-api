json.extract! @gig, :name, :address, :description, :price, :photo_url
# TODO: pass the created time to database
json.created_at @gig.created_at.strftime("%b%e, %l:%M %p")

json.bids do
  json.array! @gig.bids do |bid|
    json.extract! bid, :id, :price, :phone_number, :address, :note
  end
end