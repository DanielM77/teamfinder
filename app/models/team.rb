class Team < ActiveRecord::Base
  resourcify
  belongs_to :club
  belongs_to :league
  attr_accessible :league, :name, :league_id
  def team_type_name
  	return league.area.league_type.team_type.name
  end
end
