class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.float :price
      t.references :user

      t.timestamps
    end
    add_index :listings, :user_id
  end
end
