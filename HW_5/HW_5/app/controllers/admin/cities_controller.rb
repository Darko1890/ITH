class Admin::CitiesController < Admin::BaseController

  def new
    @city = City.new(params[:id])
  end

  def create
    @country = Country.find(params[:country_id])
    @city = @country.cities.create(city_params)
    redirect_to admin_country_path(@country)
  end

  def show
    @country = Country.find(params[:country_id])

    # @city = City.find(params[:id])
    @city = Country.find(params[:country_id]).cities.find(params[:id])

  end

  private

  def city_params
    params.require(:city).permit(:name, :image, :country_id, :avatar)
  end
end
