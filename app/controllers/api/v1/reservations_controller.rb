class Api::V1::ReservationsController < Api::V1::BaseController
  before_action :set_reservation, only: [:update, :show, :destroy]
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]

  def index
    if params[:catering_id]
      @reservations = Reservation.where(catering_id: params[:catering_id])
    elsif params[:user_id]
      @reservations = Reservation.where(user_id: params[:user_id])
    else
      @reservations = Reservation.all
    end
    render json: @reservations #Just for testing
  end

  def show
    @reservation = Reservation.find(params[:id])
    render json: @reservation #Just for testing
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      render json: {reservation: @reservation, status: :created}
    else
      render_error
    end
  end

  def update
    if @reservation.update(reservation_params)
      render json: {reservation: @reservation, status: :updated}
    else
      render_error
    end
  end

  def destroy
    @reservation.destroy
    render json: {status: :deleted}
  end

  private

  def reservation_params
    params.require(:reservation).permit(:comments, :date, :time, :end_time, :catering_id, :user_id)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def render_error
    render json: { errors: @review.errors.full_messages },
      status: :unprocessable_entity
  end
end
