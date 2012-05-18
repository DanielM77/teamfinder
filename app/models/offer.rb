class Offer < ActiveRecord::Base
  has_many :contacts
  attr_accessible :club, :description, :league, :max_age, :min_age, :min_league, :position, :season, :team, :valid_from, :valid_until

  def self.valid_only
    return where("valid_from <= ? and valid_until >= ?", Date.today, Date.today)
  end
end
