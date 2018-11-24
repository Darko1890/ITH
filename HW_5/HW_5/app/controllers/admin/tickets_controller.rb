class Admin::TicketsController < Admin::BaseController
  def new
    @ticket = Ticket.new(params[:id])
  end

  def create
    @country = Country.find(params[:country_id])
    @city = City.find(params[:city_id])
    @plane = Plane.find(params[:plane_id])
    @passenger = Passenger.find(params[:passenger_id])


    @ticket = @passenger.tickets.create(ticket_params)

    redirect_to admin_country_city_plane_passenger_path(@country, @city, @plane, @passenger)
  end

  def show
    @country = Country.find(params[:country_id])
    @city = City.find(params[:city_id])
    @plane = Plane.find(params[:plane_id])
    @passenger = Passenger.find(params[:passenger_id])


    @ticket = Ticket.find(params[:id])
  end

  private

  def ticket_params
    params.require(:ticket).permit(:name, :image, :country_id, :city_id, :plane_id, :passenger_id, :avatar)
  end
end
