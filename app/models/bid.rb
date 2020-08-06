class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :gig

  validates :price, :phone_number, :address, :note, presence: true
end
