class User < ApplicationRecord
  has_many :gigs, dependent: :destroy
  has_many :bids, dependent: :destroy
  validates :name, presence: true
end
