class Gig < ApplicationRecord
  belongs_to :user
  has_many :bids
  validates :name, :address, :description, :price, presence: true
end
