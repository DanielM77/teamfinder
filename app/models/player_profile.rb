class PlayerProfile < Player
  resourcify
  has_many :club_contacts , foreign_key:'player_id', class_name:'ClubContact'
  attr_accessible :show_profile
  def create_contact_defaults
      {:name => self.name,
      :first_name => self.first_name,
      :birthdate => self.birthdate,
      :street => self.street,
      :zip => self.zip,
      :city => self.city,
      :phone => self.phone,
      :mobile => self.mobile,
      :email => self.email,
      :nationality => self.nationality,
      :max_distance => self.max_distance,
      :strong_foot => self.strong_foot,
      :transfer_fee => self.transfer_fee,
      :has_contract => self.has_contract,
      :show_profile => false,
      :gender => self.gender,
      :current_league_id => self.current_league_id,
      :expected_league_id => self.expected_league_id}

  end
end
