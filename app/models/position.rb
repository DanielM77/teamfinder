class Position < ActiveRecord::Base
  belongs_to :position_group
  has_many :positionings
  has_many :players, through: :positionings
  attr_accessible :name
end
