class SpotsController < ApplicationController
  def new
  end

  def index
    @spots = Spot.all
    @spot = Spot.new
  end

  def show
  end

  def edit
  end

  def create
    spot = Spot.new(spot_params)
    if spot.save
      redirect_to :action => "index"
    else
      redirect_to :action => "index"
    end
  end

  def destroy
    spot = Spot.find(params[:id])
    spot.destroy
    redirect_to action: :index
  end


  private

  def spot_params
    params.require(:spot).permit(:post_name, :caught_fish, :access, :address, :latitude, :longitude)
  end
end
