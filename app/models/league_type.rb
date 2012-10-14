class LeagueType < ActiveRecord::Base
	belongs_to :team_type
  has_many :areas
  has_many :former_leagues
  has_many :players, through: :former_leagues
  attr_accessible :name, :ranking
end
