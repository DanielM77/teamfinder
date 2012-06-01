class Offer < ActiveRecord::Base
  has_many :contacts
  LEAGUE_TYPES = ["Oberliga", "Verbandsliga", "Gruppenliga", "Kreisoberliga", "Kreisliga A", "Kreisliga B", "Kreisliga C"]
  POSITIONS = ["Sturm", "Mittelfeld", "Abwehr", "Tor"]
  SEASONS = ["2012/2013","2013/2014","2014/2015"]
  attr_accessible :club, :description, :league, :max_age, :min_age, :min_league, :position, :season, :team, :valid_from, :valid_until
  validates :league, inclusion: LEAGUE_TYPES
  validates :min_league, inclusion: LEAGUE_TYPES
  validates :position, inclusion: POSITIONS
  validates :season, inclusion: SEASONS
  scope :one_position, lambda{ |pos| where('position = ?',pos)}

  def self.valid_only
    return where("valid_from <= ? and valid_until >= ?", Date.today, Date.today)
  end
  def self.contact_count
    return Contact.count
  end
end
