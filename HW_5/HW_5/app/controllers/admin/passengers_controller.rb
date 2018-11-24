class Admin::PassengersController < Admin::BaseController

  def new
    @passenger = Passenger.new(params[:id])
  end

  def create
    @country = Country.find(params[:country_id])
    @city = City.find(params[:city_id])
    @plane = Plane.find(params[:plane_id])

    @passenger = @plane.passengers.create(passenger_params)

    redirect_to admin_country_city_plane_path(@country, @city, @plane)
  end

  def show
    @country = Country.find(params[:country_id])
    @city = City.find(params[:city_id])
    @plane = Plane.find(params[:plane_id])

    @passenger = Passenger.find(params[:id])
  end

  private

  def passenger_params
    params.require(:passenger).permit(:name, :image, :country_id, :city_id, :plane_id, :avatar)
  end
end
