class StaticPagesController < ApplicationController
  def home
  	if logged_in?
  		@workouts = current_user.workout_runs.build
  		@feed_items = current_user.feed
  	end
  end

  def help
  end

  def about
  end
end
