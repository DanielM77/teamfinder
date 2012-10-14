class FormerLeague < ActiveRecord::Base
  belongs_to :player
  belongs_to :league_type
end
