class AddTimestampToTagship < ActiveRecord::Migration
  def change
    drop_table :tagships

    create_table :tagships do |t|
      t.references :tag
      t.references :listing
      t.timestamps
    end
    add_index :tagships, :tag_id
    add_index :tagships, :listing_id

  end
end
