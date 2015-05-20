class ShowListingsController < ApplicationController

  def new
    @show_listing = ShowListing.new

  end

  
end
