class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @listings = Listing.all
    @auctions = Auction.all
  end

  def dashboard
    @listings = Listing.all
    @auctions = Auction.all
  end
end
