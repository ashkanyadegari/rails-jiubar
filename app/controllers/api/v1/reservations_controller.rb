class Api::V1::ReservationsController < Api::V1::BaseController
  def index
    @reservations = Reservation.all
    render json: @reservations #Just for testing
  end

  def show
    @reservation = Reservation.find(params[:id])
    render json: @reservation #Just for testing
  end
end
