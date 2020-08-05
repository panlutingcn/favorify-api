class Api::V1::GigsController < Api::V1::BaseController
  def index
    @gigs = Gig.all
  end
end
