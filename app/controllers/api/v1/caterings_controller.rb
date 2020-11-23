class Api::V1::CateringsController < Api::V1::BaseController
  def index
    @caterings = Catering.all
  end

  def show
    @catering = Catering.find(params[:id])
    render json: @catering #Just for testing
  end
end
