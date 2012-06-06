class League < ActiveRecord::Base
  belongs_to :area
  attr_accessible :name
end
