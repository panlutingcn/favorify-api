class ChangePhoneToStringInBids < ActiveRecord::Migration[6.0]
  def change
    change_column :bids, :phone_number, :string
  end
end
