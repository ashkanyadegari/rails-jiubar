class Api::V1::ReservationsController < Api::V1::BaseController
  def index
    if params[:catering_id]
      @reservations = Reservation.where(catering_id: params[:catering_id])
    else
      @reservations = Reservation.all
    end
    render json: @reservations #Just for testing
  end

  def show
    @reservation = Reservation.find(params[:id])
    render json: @reservation #Just for testing
  end
end
