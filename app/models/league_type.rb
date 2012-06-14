class LeagueType < ActiveRecord::Base
	belongs_to :team_type
  has_many :areas
  has_many :players
  attr_accessible :name, :ranking
end
