class Api::V1::BidsController < Api::V1::BaseController
  before_action :set_bid, only: [ :show, :update, :destroy ]

  def index
    @bids = Bid.all
  end

  def show
    
  end

  def create
    @bid = Bid.new(bid_params)
    if @bid.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    if @bid.update(bid_params)
      render :show
    else
      render_error
    end
  end

  def destroy
    @bid.destroy
    head :no_content
  end
  
  private

  def set_bid
    @bid = Bid.find(params[:id])
  end

  def bid_params
    params.require(:bid).permit(:user_id, :id, :name, :address, :description, :price)
  end
  
  def render_error
    render json: { errors: @gig.errors.full_messages },
      status: :unprocessable_entity
  end

end