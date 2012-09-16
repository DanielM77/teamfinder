class User < ActiveRecord::Base
	rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness:true

  # Setup accessible (or protected) attributes for your model

  attr_accessible :email, :password, :password_confirmation, :remember_me, :initial_role

  # attr_accessible :title, :body
  def initial_role=(role_name)
    @initial_role = role_name
    add_role(role_name)
  end
  def initial_role
    @initial_role
  end
  def has_player_profile?
    PlayerProfile.with_role(:player, self).empty? == False
  end
  def has_club_profile?
    Club.with_role(:club, self).empty? == False
  end
end
