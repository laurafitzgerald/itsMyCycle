class DropTableCycleWorkouts < ActiveRecord::Migration
  def change
	drop_table :cycle_workouts
  end
end
