class Offer < ActiveRecord::Base
  resourcify
  has_many :contacts
  has_many :player_contacts
  belongs_to :season
  belongs_to :position
  belongs_to :min_league_type, class_name: 'LeagueType'
  belongs_to :team
  belongs_to :club
  STRONG_FOOT = ['Links','Rechts','beidfuessig','egal']
  CONTRACT = ['Amateurspieler','Vertragsspieler','egal']
  TRANSFER_FEE = ['mit Abloesesumme','ohne Abloesesumme','egal']
  attr_readonly :club_id
  attr_accessible :description,:season, :position, :season_id, :position_id,:min_league_type_id,
                  :max_age, :min_age, :min_league_type,:strong_foot, :valid_from, :valid_until
  scope :by_position, lambda {|pos|
    joins(:position).where('positions.id in( ?) ',pos) unless pos.blank?}

  scope :by_description, lambda { |description| where("description like '%#{description}%'") unless description.blank? }

  scope :by_area, lambda { |area|
    joins(:team).joins(:team => [{:league => :area}]).where ("areas.id = #{area}") unless area.blank? }

  scope :by_league_type_ranking, lambda { |league_type_ranking|
    joins(:team).joins(:team =>  [{:league => {:area => :league_type}}]).where ("league_types.ranking <= #{league_type_ranking}
      and league_types.ranking >= #{league_type_ranking}") unless league_type_ranking.blank? }

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
