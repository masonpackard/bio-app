module ApplicationHelper
	def resource_name
		:user
	end

	def resource
		@resource ||= User.new
	end

	def devise_mapping
		@devise_mapping ||= Devise.mappings[:user]
	end

	def copyright
		start_year = 2013
		current_year = Time.new.year

		"#{start_year} - #{current_year}"
	end
end
