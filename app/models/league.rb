class League < ActiveRecord::Base
  belongs_to :area
  has_many :teams
  attr_accessible :name
end
