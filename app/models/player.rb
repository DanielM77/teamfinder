class Player < ActiveRecord::Base
  resourcify
  belongs_to :current_league_type, class_name:'LeagueType'
  belongs_to :expected_league_type, class_name:'LeagueType'
  belongs_to :position
  attr_accessible :name, :first_name, :birthdate, :street, :zip, :city, :phone,
                  :mobile, :email, :nationality, :max_distance, :strong_foot,
                  :transfer_fee, :has_contract, :expected_money, :show_profile,
                  :gender, :current_league_type_id, :expected_league_type_id, :position_id

  def full_name
    if first_name
      first_name << " " << name
    else
      name
    end

  end
end
