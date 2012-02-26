class CreateListingImages < ActiveRecord::Migration
  def change
    create_table :listing_images do |t|
      t.text :description
      t.references :listing

      t.timestamps
    end
    add_index :listing_images, :listing_id
  end
end
