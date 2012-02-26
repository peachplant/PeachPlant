class AddPrimaryImageIdToListings < ActiveRecord::Migration
  def change
    add_column :listings, :primary_image_id, :integer

  end
end
