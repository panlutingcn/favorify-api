class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.boolean :selected
      t.references :user, null: false, foreign_key: true
      t.references :gig, null: false, foreign_key: true

      t.timestamps
    end
  end
end
