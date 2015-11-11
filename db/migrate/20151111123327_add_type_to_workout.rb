class AddTypeToWorkout < ActiveRecord::Migration
  def change
    add_column :workouts, :type, :string
  end
end
