class Club < ActiveRecord::Base
  resourcify
  attr_accessible :city, :email, :fax, :homepage, :image_path, :mobile, :name, :phone, :street, :street_no, :zip
end
