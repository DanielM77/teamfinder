class Club < ActiveRecord::Base
  resourcify
  has_many    :public_offers, :dependent => :destroy
  has_many    :player_contacts, :through => :public_offers, :dependent => :destroy
  belongs_to  :user

  attr_accessible :city, :email, :fax, :homepage, :image_path, 
                  :mobile, :name, :phone, :street, :street_no, :zip

  validates :name, presence: true, length: {minimum: 5, maximum: 50}, uniqueness:true
  validates :phone, :street, :zip, :city, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness:true
  def has_player_contacts?
    counter = 0
    public_offers.each do |offer|
      counter+=offer.player_contacts.count
    end
    counter>0
  end
end
