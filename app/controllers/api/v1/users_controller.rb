class Api::V1::UsersController < Api::V1::BaseController
  before_action :set_user, only: [ :show ]
  skip_before_action :verify_authenticity_token

  def show
  end

  def create
    @user = user.new(user_params)
    if @user.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def set_user
    @user = user.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name)
  end

  def render_error
    render json: { errors: @user.errors.full_messages },
      status: :unprocessable_entity
  end

end
