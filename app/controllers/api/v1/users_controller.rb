class Api::V1::UsersController < Api::V1::BaseController
  def index
    @users = User.all
    render json: @reviews #Just for testing
  end

  def show
    @user = User.find(params[:id])
    render json: @review #Just for testingg
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  private

  def user_params
    params.require(:user).permit(:open_id, :name, :phonenumber)
  end
end
