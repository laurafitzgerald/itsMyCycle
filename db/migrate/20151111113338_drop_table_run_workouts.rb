class DropTableRunWorkouts < ActiveRecord::Migration
  def change
  	drop_table :run_workouts
  end
end
