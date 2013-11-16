class Healthpro < ActiveRecord::Base
	belongs_to :user
	has_many :feedbacks
end
