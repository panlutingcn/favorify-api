json.extract! @gig, :id, :name, :description
json.bids @gig.bids do |bid|
  json.extract! bid, :id, :chosen
  json.date bid.created_at.strftime("%m/%d/%y")
end