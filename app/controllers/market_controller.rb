class MarketController < ApplicationController
  def index
    @offers = Offer.valid_only
  end
end
