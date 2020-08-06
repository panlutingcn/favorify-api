class AddColumnsToBids < ActiveRecord::Migration[6.0]
  def change
    add_column :bids, :price, :integer
    add_column :bids, :phone_number, :integer
    add_column :bids, :address, :string
    add_column :bids, :note, :string
  end
end
