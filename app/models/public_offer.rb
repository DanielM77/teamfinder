class PublicOffer < Offer
  validates_presence_of :min_league, :team, :season, :valid_from, :valid_until, :max_age, :min_age
  validates_numericality_of :min_age,:greater_than_or_equal_to => 14
  validates_numericality_of :max_age,:less_than_or_equal_to => 99
end
