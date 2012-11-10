class League < ActiveRecord::Base
	belongs_to :team_type
  has_many :former_leagues
  #has_many :offers
  has_many :players, through: :former_leagues
  has_many :current_players, class_name:'Player'
  attr_accessible :name, :ranking
end
