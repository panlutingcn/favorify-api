class Gig < ApplicationRecord
  belongs_to :user
  validates :name, :address, :description, :price, :phone_number, presence: true
end
