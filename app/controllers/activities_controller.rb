class ActivitiesController < ApplicationController
  def create
    @activity = Activity.new(activity_params)
    @activity.save
    redirect_to @activity
  end

  def show
    @activity = Activity.find(params[:id])
  end

private
  def activity_params
    params.require(:activity).permit(:name, :location, :time, :creator_id)
  end
end