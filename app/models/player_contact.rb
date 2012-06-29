class PlayerContact < Player
  resourcify
   belongs_to :offer
   attr_accessible :name, :first_name, :birthdate, :street, :zip, :city, :phone,
                   :mobile, :email, :nationality, :max_distance, :strong_foot,
                   :transfer_fee, :has_contract, :expected_money, :show_profile,
                   :gender, :current_league_type_id, :expected_league_type_id, :position_id,
                   :message, :status

  def create_profile
    player_profile = PlayerProfile.new(
        attributes=(
            {:name => self.name}
            {:first_name => self.first_name}
            {:birthdate => self.birthdate}
            {:street => self.street}
            {:zip => self.zip}
            {:city => self.city}
            {:phone => self.phone}
            {:mobile => self.mobile}
            {:email => self.email}
            {:nationality => self.nationality}
            {:max_distance => self.max_distance}
            {:strong_foot => self.strong_foot}
            {:transfer_fee => self.transfer_fee}
            {:has_contract => self.has_contract}
            {:show_profile => false}
            {:gender => self.gender}
            {:current_league_type_id => self.current_league_type_id}
            {:expected_league_type_id => self.expected_league_type_id}
            {:position_id => self.position_id}
        )
    )
  end
end
