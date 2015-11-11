class CreateWorkoutRuns < ActiveRecord::Migration
  def change
    create_table :workout_runs do |t|
      t.string :runner_id

      t.timestamps null: false
    end
  end
end
