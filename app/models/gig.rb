class Gig < ApplicationRecord
  belongs_to :user
  has_many :bids, dependent: :destroy
  validates :name, :address, :description, :price, presence: true
end
