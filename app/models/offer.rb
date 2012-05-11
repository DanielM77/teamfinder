class Offer < ActiveRecord::Base
  attr_accessible :club, :description, :league, :max_age, :min_age, :min_league, :position, :season, :team, :valid_from, :valid_until
end
