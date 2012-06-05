class Club < ActiveRecord::Base
  resourcify
  has_many :teams
  attr_accessible :city, :email, :fax, :homepage, :image_path, :mobile, :name, :phone, :street, :street_no, :zip
end
