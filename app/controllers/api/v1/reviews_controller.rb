class Api::V1::ReviewsController < Api::V1::BaseController
  def index
    if params[:catering_id]
      @reviews = Catering.find(params[:catering_id]).reviews
    elsif params[:reservation_id]
      @reviews = Review.where(reservation_id: params[:reservation_id])
    else
      @reviews = Review.all
    end
    render json: @reviews #Just for testing
  end

  def show
    @review = Review.find(params[:catering_id])
    render json: @review #Just for testing
  end
end
