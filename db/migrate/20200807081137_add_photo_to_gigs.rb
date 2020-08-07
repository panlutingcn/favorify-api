class AddPhotoToGigs < ActiveRecord::Migration[6.0]
  def change
    add_column :gigs, :photo_url, :string
  end
end
