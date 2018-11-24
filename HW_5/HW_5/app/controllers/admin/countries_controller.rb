class Admin::CountriesController < Admin::BaseController
  def index
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      redirect_to admin_countries_path
    else
      render :new
    end
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update
    @country = Country.find(params[:id])
    if @country.update_attributes(country_params)
      redirect_to admin_countries_path
    else
      render :edit
    end
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy()
    redirect_to admin_countries_path
  end

  private

def country_params
  params.require(:country).permit(:name, :image, :avatar)
end


end
