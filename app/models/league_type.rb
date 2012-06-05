class LeagueType < ActiveRecord::Base
	belongs_to :team_type
  attr_accessible :name, :ranking
end
