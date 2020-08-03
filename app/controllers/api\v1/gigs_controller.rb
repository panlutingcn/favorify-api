class GigsController < ApplicationController
  before_action :set_gig, only: [:show, :update, :destroy]
  
  # GET /gigs
  def index
    @gigs = Gig.all
  end

  # GET /gigs/id
  def show
  end

  # POST /gigs
  def create
    @gig = Gig.new(gig_params)
    @gig.save
    redirect_to @gig, notice: 'A gig was successfully created!'
  end

  # PATCH/PUT /gigs/id
  def update
    @gig.update(gig_params)
    redirect_to @gig, notice: 'Gig info updated!'
  end

  # DELETE /gigs/id
  def destroy
    @gig.destroy
    redirect_to gigs_url, notice: 'The gig was successfully deleted!'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_gig
    @gig = Gig.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def gig_params
    params.require(:gig).permit(:name, :city, :address, :description, :price, :phone_number)
  end
end
