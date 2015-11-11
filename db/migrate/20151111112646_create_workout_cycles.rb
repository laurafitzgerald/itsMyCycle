class CreateWorkoutCycles < ActiveRecord::Migration
  def change
    create_table :workout_cycles do |t|
      t.string :bike_id

      t.timestamps null: false
    end
  end
end
