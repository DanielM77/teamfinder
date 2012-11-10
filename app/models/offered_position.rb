class OfferedPosition < ActiveRecord::Base
  belongs_to  :offer
  belongs_to  :position
end
