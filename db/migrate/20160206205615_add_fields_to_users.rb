class AddFieldsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :user_name, :string
  	add_column :users, :convio_primary_email, :string
  	add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :street1, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :string
    add_column :users, :convio_authtoken, :string


  end
end
