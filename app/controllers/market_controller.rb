class MarketController < ApplicationController
  #before_filter :authenticate_user!
  before_filter :setup_static_content

  def setup_static_content
    @position_groups = PositionGroup.all
    @leagues = League.all
    @team_types = TeamType.all
  end

  def index



    # Params save, if set for reuse
    @param_search = params[:search] if params.has_key?(:search)

    @param_position_group_id = params[:position_group_id] if params.has_key?(:position_group_id)
    @param_positions = Position.find_all_by_position_group_id(@param_position_group_id)  unless @param_position_group_id.blank?
    @param_league_ranking = params[:league_ranking] if params.has_key?(:league_ranking)
    @param_age = params[:age] if params.has_key?(:age)
    @param_strong_foot = params[:strong_foot] if params.has_key?(:strong_foot)
    @param_contract = params[:contract] if params.has_key?(:contract)
    @param_team_type = params[:team_type_id] if params.has_key?(:team_type_id)
    @public_offers = PublicOffer.by_description(@param_search).by_position(@param_positions)
              .by_league_ranking(@param_league_ranking)
              .by_age(@param_age)
              .by_strong_foot(@param_strong_foot)
              .by_contract(@param_contract)
              .by_team_type(@param_team_type)
  end
end
