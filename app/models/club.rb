class Club < ActiveRecord::Base
  resourcify
  has_many :teams , :dependent => :destroy
  has_many :offers, :through => :teams, :dependent => :destroy
  attr_accessible :city, :email, :fax, :homepage, :image_path, :mobile, :name, :phone, :street, :street_no, :zip

  validates :name, presence: true, length: {minimum: 5, maximum: 50}, uniqueness:true
  validates :phone, :street_no, :street, :zip, :city, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness:true
end
