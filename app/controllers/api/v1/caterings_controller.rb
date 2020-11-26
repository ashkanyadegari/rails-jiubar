class Api::V1::CateringsController < Api::V1::BaseController
  before_action :set_catering, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]

  def index
    if params[:user_id]
      @caterings = Catering.where(user_id: params[:user_id])
      render json: @caterings #Just for testing
    elsif params[:query].present?
      @caterings = Catering.search_by_title_and_description(params[:query])
    else
      @caterings = Catering.all
      render json: @caterings #Just for testing
    end
  end

  def show
    # render json: @catering #Just for testing
  end

  def create
    @catering = Catering.new(catering_params)
    if @catering.save
      render json: {catering: @catering, status: :created}
    else
      render_error
    end
  end


  def update
    if @catering.update(catering_params)
      render json: {catering: @catering, status: :updated}
    else
      render_error
    end
  end

  def destroy
    @catering.destroy
    render json: {status: :deleted}
  end

  private

  def catering_params
    params.require(:catering).permit(:title, :description, :price, :address, :longitude, :latitude, :user_id, photos: [])
  end

  def set_catering
    @catering = Catering.find(params[:id])
  end

  def render_error
    render json: { errors: @review.errors.full_messages },
      status: :unprocessable_entity
  end
end
