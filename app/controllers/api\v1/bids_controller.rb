class BidsController < ApplicationController
  before_action :set_gig, only: [:create, :update]

  # POST gigs/id/bids
  def create
    # get info from form
    @bid = Bid.new(bid_params)
    # read gig id from url
    # assign gig on backend
    @bid.gig_id = @gig.id
    @bid.save
    redirect_to @bid, notice: 'A bid was successfully created! Waiting for Laoban to confirm...'
  end

  # PUT bids/id
  def update
    @bid.update(bid_params)
    redirect_to @bid, notice: 'The bid was updated!'
  end

  private

  def set_gig
    @gig = Gig.find(params[:gig_id])
  end

  def bid_params
    params.require(:bid).permit(:chosen)
  end
  
end
