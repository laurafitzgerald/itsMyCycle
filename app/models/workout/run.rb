class Run < Workout

	belongs_to :user

	def new
	end

	def set_type
		self.type= 'Run'
	end
end
