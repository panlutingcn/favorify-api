class ChangePriceToFloatInGigs < ActiveRecord::Migration[6.0]
  def change
    remove_column :gigs, :price
    add_column :gigs, :price, :float
  end
end
