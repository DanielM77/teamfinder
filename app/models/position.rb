class Position < ActiveRecord::Base
  belongs_to :position_group
  attr_accessible :name
end
