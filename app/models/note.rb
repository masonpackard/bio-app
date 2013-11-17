class Note < ActiveRecord::Base
	belongs_to :user

	validates :body, presence: true, length: { maximum: 250 }
end
