class CarsController < ApplicationController

  def index
    @cars = Car.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @car = Car.create(
      model: params[:model],
      price: params[:price]
      )
    redirect_to "/cars"
  end
  
  def show
    @car = Car.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @car = Car.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    car = Car.find_by(id: params[:id])
    car = Car.update({
      model: params[:model],
      price: params[:price]
      })
    redirect_to "/cars"
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    render "index.html.erb"
  end

end
