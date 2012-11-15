class StaticPagesController < ApplicationController
  def help
  end

  def about
  end
  def index
    @top_five_club_offers = PublicOffer.valid_only.limit(5).order('created_at DESC')
    @top_five_player_offers = PlayerProfile.where(show_profile = 1).limit(5).order('created_at DESC')
    #redirect_to market_index_path if user_signed_in?
  end
  def pricing

  end
end
