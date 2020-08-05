json.extract! @gig, :name, :address, :description, :price
json.created_at @gig.created_at.strftime("%b %e, %l:%M %p")