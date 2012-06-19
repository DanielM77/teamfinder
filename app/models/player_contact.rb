class PlayerContact < Player
  resourcify
   belongs_to :offer
   attr_accessible :name, :first_name, :birthdate, :street, :zip, :city, :phone,
                   :mobile, :email, :nationality, :max_distance, :strong_foot,
                   :transfer_fee, :has_contract, :expected_money, :show_profile,
                   :gender, :current_league_type_id, :expected_league_type_id, :position_id,
                   :message, :status

end