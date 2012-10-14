class Player < ActiveRecord::Base
  resourcify
  validates_presence_of :name, :first_name
  belongs_to :current_league_type, class_name:'LeagueType'
  belongs_to :expected_league_type, class_name:'LeagueType'
  has_many :positionings
  has_many :positions, through: :positionings
  attr_accessible :name, :first_name, :birthdate, :street, :zip, :city, :phone,
                  :mobile, :email, :nationality, :max_distance, :strong_foot,
                  :transfer_fee, :has_contract, :expected_money,
                  :gender, :current_league_type_id, :expected_league_type_id, :position_ids

  def full_name
    if first_name
      first_name << " " << name
    else
      name
    end

  end

  def age
    unless birthdate.nil?
      today = Date.today
      a = today.year - birthdate.year
      if today.month > birthdate.month ||
          (today.month >= birthdate.month && today.day > birthdate.day)
        a = a - 1
      end
    end
  end
end
