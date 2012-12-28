class Team < ActiveRecord::Base
  resourcify
  belongs_to  :club
  belongs_to  :league
  belongs_to  :team_type
  has_many :public_offers
  has_many :club_contacts
  validates_presence_of :name, :team_type, :league, :club
  attr_accessible :league_id, :name, :club, :team_type_id
  def long_name
    "#{name} (#{team_type.name})"
  end
end
