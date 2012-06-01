class Contact < ActiveRecord::Base
  attr_accessible :age, :email, :gender, :league, :message, :name, :phone, :position
  belongs_to :offer
  def self.with_message
    return self.where("message is not null");
  end
end
