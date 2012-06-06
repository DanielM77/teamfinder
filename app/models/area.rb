class Area < ActiveRecord::Base
  belongs_to :league_type
  has_many :leagues
  attr_accessible :name
end
