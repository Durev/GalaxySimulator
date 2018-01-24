class PlanetsController < ApplicationController
  def index
    @sun_planets = Star.find(1).planets
    @polaris_planets = Star.find(2).planets
    @sirius_planets = Star.find(3).planets
  end

  def create
    chosen_star = Star.find(star_params[:star_id])
    @planet = chosen_star.planets.build(planet_params)
    if @planet.save
      redirect_to root_path
    else
      render 'planets/index'
    end
  end

  private

    def planet_params
      params.require(:planet).permit(:name, :nature, :star)
    end

    def star_params
      params.require(:star).permit(:star_id)
    end
end
