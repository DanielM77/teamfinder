class Team < ActiveRecord::Base
  resourcify
  belongs_to :club
  belongs_to :league
  has_many :offers
  has_many :club_contacts
  attr_accessible :league, :league_id, :name, :club
  def team_type_name
  	return league.area.league_type.team_type.name
  end
end
