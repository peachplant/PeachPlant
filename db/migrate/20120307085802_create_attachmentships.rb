class CreateAttachmentships < ActiveRecord::Migration
  def change
    create_table :attachmentships do |t|
      t.references :listing
      t.references :attachment

      t.timestamps
    end
    add_index :attachmentships, :listing_id
    add_index :attachmentships, :attachment_id
  end
end
