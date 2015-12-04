class Workout < ActiveRecord::Base
	belongs_to :user
	#self.abstract_class = true

	def new
	end
end
