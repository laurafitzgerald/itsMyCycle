

class Cycle < Workout
	
	belongs_to :user

	def new

	end

	def set_type
		self.type= 'Cycle'
	end
end
