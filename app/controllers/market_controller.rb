class MarketController < ApplicationController
  before_filter :authenticate_user!
  def index
    unless params[:position].nil?
      @offers = Offer.one_position(params[:position])
    else
      @offers = Offer.valid_only
    end
    @contacts = Contact.with_message
  end
end
