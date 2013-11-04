class Profile < ActiveRecord::Base
	belongs_to :users

	validates_presence_of :first_name
	validates_presence_of :last_name
	validates_presence_of :first_name
	validates_presence_of :gender
	validates_presence_of :birth_date
	validates_presence_of :height_feet
	validates_presence_of :height_inches
	validates_uniqueness_of :withings_id
	validates_uniqueness_of :withings_api_key
end
