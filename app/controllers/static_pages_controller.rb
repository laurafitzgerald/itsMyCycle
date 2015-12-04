class StaticPagesController < ApplicationController
  def home
  	if logged_in?
  		@workouts = current_user.workouts.build
  		@feed_items = current_user.feed
  	end
  end

  def help
  end

  def about
  end
end
