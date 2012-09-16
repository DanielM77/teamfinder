class PlayersMarketController < ApplicationController
  before_filter :authenticate_user!
  #load_and_authorize_resource
  def index
    if (can? :read, PlayerProfile) && (current_user.has_role?(:club))
      @player_profiles = PlayerProfile.find_all_by_show_profile(true)
    else
      redirect_to market_index_path, alert: 'Du hast keinen Zugriff auf die Spielersuche'
    end
  end
end
