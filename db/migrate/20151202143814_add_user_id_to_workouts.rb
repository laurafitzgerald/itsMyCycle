class AddUserIdToWorkouts < ActiveRecord::Migration
   def change

  	change_table(:workouts)do |t|
  	t.references :user

     end
  end
end
