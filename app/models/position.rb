class Position < ActiveRecord::Base
  belongs_to :position_group
  has_many :positions
  attr_accessible :name
end
