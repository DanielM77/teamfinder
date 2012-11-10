class TeamType < ActiveRecord::Base
	has_many :leagues, :dependent => :destroy
  has_many :teams
	accepts_nested_attributes_for :leagues
  attr_accessible :name
end
