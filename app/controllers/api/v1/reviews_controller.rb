class Api::V1::ReviewsController < Api::V1::BaseController
  def index
    @reviews = Review.all
    render json: @reviews #Just for testing
  end

  def show
    @review = Review.find(params[:reservation_id])
    render json: @review #Just for testing
  end
end
