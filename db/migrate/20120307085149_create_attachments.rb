class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.text :description
      t.has_attached_file :file

      t.timestamps
    end
  end
end
