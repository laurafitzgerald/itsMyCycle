class WorkoutsController < ApplicationController
 
   #before_action :logged_in_user, only: [:create, :destroy]
   

  def index
  	@workouts = Workout.all
  end

  def new
    @workout = Workout.new()
    @user = current_user
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def create


  	#secure_post = params.require(:workout).permit(:hours)
    @workout = current_user.workouts.build(workout_params)
    if @workout.save
      flash[:success] = "Workout Created"
      redirect_to root_url
    else
      @feed_items=[]
      render 'static_pages/home'
    end
   
  end

  def destroy

  end

 def workout_params
    params.require(:workout).permit( :distance, :hours, :mins, :secs)

end
  
end
