workouts_controller.rb


class WorkoutssController < ApplicationController
  def new
    @workout = Workout.new
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def create
   
  end

  
end
