class Api::V1::GigsController < Api::V1::BaseController
  before_action :set_gig, only: [ :show, :update, :destroy ]
  skip_before_action :verify_authenticity_token

  def index
    if params[:query].present?
      @gigs = Gig.global_search(params[:query])
    else
      @gigs = Gig.all
    end
  end

  def show

  end

  def create
    p "I'm here"
    @gig = Gig.new(gig_params)
    # debugger
    if @gig.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @gig.update(gig_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @gig.destroy
    head :no_content
  end

  private

  def set_gig
    @gig = Gig.find(params[:id])
  end

  def gig_params
    params.require(:gig).permit(:user_id, :id, :name, :address, :description, :price, :photo_url)
  end

  def render_error
    render json: { errors: @gig.errors.full_messages },
      status: :unprocessable_entity
  end

end
