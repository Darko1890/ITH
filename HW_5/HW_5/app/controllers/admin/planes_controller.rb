class Admin::PlanesController < Admin::BaseController
  def new
    @plane = Plane.new(params[:id])
  end

  def create
    @country = Country.find(params[:country_id])
    @city = City.find(params[:city_id])
    @plane = @city.planes.create(plane_params)

    redirect_to admin_country_city_path(@country, @city)
  end

  def show
    @country = Country.find(params[:country_id])
    @city = City.find(params[:city_id])
    @plane = Plane.find(params[:id])
  end

  private

  def plane_params
    params.require(:plane).permit(:name, :image, :country_id, :city_id, :avatar)
  end


end
