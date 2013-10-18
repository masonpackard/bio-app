class AddUserProfileInfo < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :gender, :string
  	add_column :users, :birth_date, :date 
  	add_column :users, :withings_id, :text 
  	add_column :users, :height_feet, :integer 
  	add_column :users, :height_inches, :integer
  	add_column :users, :send_email, :boolean
  end
end
