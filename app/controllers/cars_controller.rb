class CarsController < ApplicationController

  def index
    @cars = Car.all_cars
    render json: @cars
  end

  def show
    cars = Car.all_cars
    @car = cars.map { |car| car[:id].to_s == params[:id] ? car : next }.compact.first
    render json: @car
  end

end
