class Api::V1::GigsController < Api::V1::BaseController
  before_action :set_gig, only: [ :show ]
  skip_before_action :verify_authenticity_token

  def index
    @gigs = Gig.all
  end

  def show
  end

  def create
    @gig = Gig.new(gig_params)
    if @gig.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def set_gig
    @gig = gig.find(params[:id])
  end

  def gig_params
    params.require(:gig).permit(:user_id, :name, :address, :description, :price)
  end

  def render_error
    render json: { errors: @gig.errors.full_messages },
      status: :unprocessable_entity
  end
  
end
