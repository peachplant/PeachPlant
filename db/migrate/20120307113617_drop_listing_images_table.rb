class DropListingImagesTable < ActiveRecord::Migration
  def up
    drop_table :listing_images
  end
end
