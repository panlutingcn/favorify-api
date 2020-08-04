class SetDefaultToSelectedInBids < ActiveRecord::Migration[6.0]
  def change
    change_column :bids, :selected, :boolean, default: false
  end
end
