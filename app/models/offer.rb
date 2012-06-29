class Offer < ActiveRecord::Base
  has_many :contacts
  has_many :player_contacts
  belongs_to :season
  belongs_to :position
  belongs_to :min_league_type, class_name: 'LeagueType'
  belongs_to :team
  belongs_to :club
  LEAGUE_TYPES = ["Oberliga", "Verbandsliga", "Gruppenliga", "Kreisoberliga", "Kreisliga A", "Kreisliga B", "Kreisliga C"]
  POSITIONS = ["Sturm", "Mittelfeld", "Abwehr", "Tor"]
  STRONG_FOOT = ['Links','Rechts',"beidfuessig"]
  CONTRACT = ['Amateurspieler','Vertragsspieler','egal']
  TRANSFER_FEE = ['mit Abloesesumme','ohne Abloesesumme','egal']
  attr_readonly :club_id
  attr_accessible :description,:season, :position, :season_id, :position_id,:min_league_type_id, :max_age, :min_age, :min_league_type,:strong_foot, :valid_from, :valid_until
  scope :one_position, lambda{ |pos| where('position = ?',pos)}

  def self.valid_only
    where("valid_from <= ? and valid_until >= ?", Date.today, Date.today)
  end
  def self.contact_count
    PlayerContact.where("status <> ?", "beendet")
  end
end
