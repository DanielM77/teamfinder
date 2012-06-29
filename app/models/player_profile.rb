class PlayerProfile < Player
  resourcify
  has_many :club_contacts , foreign_key:'player_id', class_name:'ClubContact'
  attr_accessible :show_profile
end
