class WorkoutsController < ApplicationController
 
   before_action :logged_in_user, only: [:create, :destroy]


  def index
  	@workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def create
  	secure_post = params.require(:workout).permit(:hours)
    @workout = current_user.workouts.build(secure_post)
    if @workout.save
      flash[:success] = "Workout Created"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
   
  end

  def destroy

  end


  
end
