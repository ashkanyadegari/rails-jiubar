class Api::V1::ReviewsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]

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

  def create
    @review = Review.new(review_params)
    if @review.save
      render json: {status: :created}
    else
      render_error
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating, :reservation_id)
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def render_error
    render json: { errors: @review.errors.full_messages },
      status: :unprocessable_entity
  end
end
