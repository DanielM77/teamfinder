class ClubContact < Offer
  resourcify
  belongs_to :player_profile, foreign_key:'player_id'
  belongs_to :team
  attr_accessible :description,:season, :position, :season_id, :team_id,
                  :position_id, :max_age, :min_age, :min_league_type,
                  :strong_foot, :valid_from, :valid_until, :status

end
