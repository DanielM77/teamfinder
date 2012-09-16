class PositionGroup < ActiveRecord::Base
  has_many :positions
  attr_accessible :name

end
