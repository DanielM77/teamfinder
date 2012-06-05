class Team < ActiveRecord::Base
  resourcify
  belongs_to :club
  LEAGUE_TYPES = ["Oberliga", "Verbandsliga", "Gruppenliga", "Kreisoberliga", "Kreisliga A", "Kreisliga B", "Kreisliga C"]
  attr_accessible :league, :name
end
