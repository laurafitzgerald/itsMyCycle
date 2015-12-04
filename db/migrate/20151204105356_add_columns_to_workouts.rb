class AddColumnsToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :hours, :decimal
    add_column :workouts, :mins, :decimal
    add_column :workouts, :secs, :decimal
  end
end
