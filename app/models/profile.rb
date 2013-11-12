class Profile < ActiveRecord::Base
	belongs_to :user

	validates_presence_of :first_name
	validates_presence_of :last_name
end
