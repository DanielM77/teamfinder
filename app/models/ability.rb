class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
       user ||= User.new # guest user (not logged in)
       if user.has_role?(:admin)
         can :manage, :all
       else
         can :create, Club if user.has_role?(:club) && Club.with_role(:club, user).empty?
         can :read, Club, :id => Club.with_role(:club, user).map{|club| club.id}
         can :update, Club, :id => Club.with_role(:club, user).map{|club| club.id}

         #Every user can create just one profile
         can :create, PlayerProfile if user.has_role?(:player) && PlayerProfile.with_role(:player, user).empty?
         can :read, PlayerProfile, :show_profile => true if user.has_role?(:premium_club)
         can :read, PlayerProfile, :id => PlayerProfile.with_role(:player, user).map{|player| player.id}
         can :update, PlayerProfile, :id => PlayerProfile.with_role(:player, user).map{|player| player.id}

         can :read,  PlayerContact, :id => PlayerContact.with_role(:club, user).map{|player| player.id}
         can :read,  PlayerContact, :id => PlayerContact.with_role(:player, user).map{|player| player.id}
         can :create, PlayerContact if user.has_role?(:player)
         can :update, PlayerContact, :id => PlayerContact.with_role(:player, user).map{|player| player.id}

         can :read, ClubContact, :id => ClubContact.with_role(:club, user).map{|club_contact| club_contact.id}
         can :write, ClubContact if user.has_role?(:club)

         can :read, Offer if user.has_role? :player
         can :manage, Offer, :id =>  Offer.with_role(:club, user).map{|club| club.id}
       end
    #
    # The first argument to `can` is the action you are giving the user permission to do.
    # If you pass :manage it will apply to every action. Other common actions here are
    # :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. If you pass
    # :all it will apply to every resource. Otherwise pass a Ruby class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details: https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
