class Measure < ActiveRecord::Base
	belongs_to :user

	def self.total_steps_on(date)
    	where("date(created_at) = ?",date).maximum(:measure_steps)
	end

	def self.max_elev_on(date)
    	where("date(created_at) = ?",date).maximum(:measure_elevation)
	end

	def self.total_dist_on(date)
    	where("date(created_at) = ?",date).maximum(:measure_distance)
	end

	def self.total_cals_on(date)
    	where("date(created_at) = ?",date).maximum(:measure_calories)
	end

	def self.avg_bpm_on(date)
    	where("date(created_at) = ?",date).average(:measure_bpm)
	end
end
