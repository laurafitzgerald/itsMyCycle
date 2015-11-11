class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.date :date
      t.time :time
      t.decimal :distance
      t.decimal :speed

      t.timestamps null: false
    end
  end
end
