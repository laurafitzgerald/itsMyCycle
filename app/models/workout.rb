class Workout < ActiveRecord::Base
	belongs_to :user

	before_save :default_values

	#self.abstract_class = true
	def default_values
		if self.secs = nil
			self.secs = 0
		end
		if self.mins = nil
			self.mins = 0
		end
		if self.hours = nil
			self.hours = 0
		end

	end


	def new
	end

	def create
	end
end
