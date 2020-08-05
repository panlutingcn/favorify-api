class User < ApplicationRecord
  has_many :gigs
  has_many :bids
  validates :name, presence: true
end
