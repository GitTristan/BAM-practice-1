class ShowListingsController < ApplicationController

  def new
    @show_listing = ShowListing.new

  end

  def create
    @show = Show.last
    @show_listing = ShowListing.new(show_listing_params)
    if @show_listing.save
      redirect_to show_path(@show)
    else
      render :new
    end
  end

  def show
    @show_listing = ShowListing.find(params[:id])

  end

  private

  def show_listing_params
    params.require(:show_listing).permit(:channel_id, :show_id, :date)

  end


end
