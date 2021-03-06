class AddNamesToUsers < ActiveRecord::Migration
  def change

    add_column :users, :first_name, :string
    add_column :users, :last_name, :string

    change_column :users, :first_name, :string, :null => false
    change_column :users, :last_name, :string, :null => false
  end
end
