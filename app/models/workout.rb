class Workout < ActiveRecord::Base
	belongs_to :user
	self.abstract_class = true
  def self.table_name_prefix
    'workout_'
  end
end
