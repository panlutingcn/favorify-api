class Gig < ApplicationRecord
  belongs_to :user
  has_many :bids, dependent: :destroy
  validates :name, :address, :description, :price, presence: true

  include PgSearch::Model

  pg_search_scope :global_search,
  against: [:name, :address, :description, :price],
  using: {
    tsearch: { prefix: true}
  }
end
