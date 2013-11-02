class AddMoreInfoToProfiles < ActiveRecord::Migration
  def change
  	add_column :profiles, :gender, :string
  	add_column :profiles, :birth_date, :date 
  	add_column :profiles, :withings_id, :text
    add_column :profiles, :withings_api_key, :text 
  	add_column :profiles, :height_feet, :integer 
  	add_column :profiles, :height_inches, :integer
  end
end
