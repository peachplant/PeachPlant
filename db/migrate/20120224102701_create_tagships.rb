class CreateTagships < ActiveRecord::Migration
  def change
    create_table :tagships, :id => false  do |t|
      t.references :tag
      t.references :listing
    end
    add_index :tagships, :tag_id
    add_index :tagships, :listing_id
  end
end
