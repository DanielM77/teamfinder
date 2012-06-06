class LeagueType < ActiveRecord::Base
	belongs_to :team_type
  has_many :areas
  attr_accessible :name, :ranking
end
