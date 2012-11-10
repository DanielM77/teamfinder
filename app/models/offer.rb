class Offer < ActiveRecord::Base
  resourcify
  has_many    :player_contacts, :dependent => :destroy
  has_many    :offered_positions,  :dependent => :destroy
  has_many    :positions, :through => :offered_positions
  belongs_to  :season
  belongs_to  :min_league, class_name: 'League'
  belongs_to  :team
  belongs_to  :club
  STRONG_FOOT = ['Links','Rechts','beidfuessig','egal']
  CONTRACT = ['Amateurspieler','Vertragsspieler','egal']
  TRANSFER_FEE = ['mit Abloesesumme','ohne Abloesesumme','egal']
  attr_readonly :club_id
  attr_accessible :description,:season, :positions, :season_id, :position_ids,:min_league_id,
                  :max_age, :min_age, :min_league,:strong_foot, :valid_from, :valid_until
  scope :by_position, lambda {|pos|
    joins(:positions).where('positions.id in( ?) ',pos).group('id') unless pos.blank?}

  scope :by_description, lambda { |description| where("description like '%#{description}%'") unless description.blank? }

    scope :by_league_ranking, lambda { |ranking|
    joins(:team).joins(:team => [:league]).where ("leagues.ranking <= #{ranking}
      and leagues.ranking >= #{ranking}") unless ranking.blank? }

  scope :by_team_type, lambda { |type|
    joins(:team).where ("teams.team_type_id = #{type}") unless type.blank? }

  scope :by_age, lambda {|age| where ("(min_age <= #{age} or min_age is null) and (max_age >= #{age} or max_age is null)") unless age.blank?}

  scope :by_strong_foot, lambda { |strong_foot| where("strong_foot = '#{strong_foot}'") unless strong_foot.blank? or strong_foot='egal' }

  scope :by_contract, lambda { |contract| where("contract = '#{contract}'") unless contract.blank? or contract='egal'}


  def self.valid_only
    where("valid_from <= ? and valid_until >= ?", Date.today, Date.today)
  end
  def self.contact_count
    PlayerContact.where("status <> ?", "beendet")
  end
end
