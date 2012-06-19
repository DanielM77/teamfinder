class Contact < ActiveRecord::Base
  attr_accessible :message, :offer_id, :player_id, :status
  belongs_to :offer
  def self.with_message
    return self.where("message is not null");
  end
end
