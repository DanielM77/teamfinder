class TeamType < ActiveRecord::Base
	has_many :league_types, :dependent => :destroy
	accepts_nested_attributes_for :league_types
  attr_accessible :name
end
