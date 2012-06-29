class PlayersMarketController < ApplicationController
  before_filter :authenticate_user!
  #load_and_authorize_resource :only => [ :index, :show ]
  def index
    @club = Club.with_role(:club_superuser, current_user).first
    if @club
      @player_profiles = PlayerProfile.find_all_by_show_profile(true)
    else
      redirect_to root_path, notice: 'Nur Vereine d&uuml;erfen die Spielersuche verwenden'
    end

  end
end
