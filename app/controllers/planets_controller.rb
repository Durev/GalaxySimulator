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
      flash[:success] = "Planet created !"
    else
      flash[:danger] = "The planet name should be unique and less than 50 characters !"
    end
      redirect_to root_path
  end

  def destroy
    @planet = Planet.find(params[:id])
    @planet.destroy
    flash[:success] = "Planet deleted !"
    redirect_to root_path
  end

  private

    def planet_params
      params.require(:planet).permit(:name, :nature, :star, :id)
    end

    def star_params
      params.require(:star).permit(:star_id)
    end
end
