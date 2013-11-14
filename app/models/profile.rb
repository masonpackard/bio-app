class Profile < ActiveRecord::Base
	belongs_to :user

	validates_presence_of :first_name
	validates_presence_of :last_name
	validates_numericality_of :height_feet, :greater_than => 0, :less_than => 10
	validates_numericality_of :height_inches, :greater_than => 0, :less_than => 12
end
