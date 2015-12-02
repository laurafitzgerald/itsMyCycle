runs_controller.rb
class Workouts::Run < ApplicationController

  def index
  	@runs = Run.all
  end

  def new
    @run = Run.new
  end

  def show
    @run = Runs.find(params[:id])
  end


end
