class Contact < ActiveRecord::Base
  attr_accessible :age, :email, :gender, :league, :message, :name, :phone, :position
  belongs_to :offer
end
