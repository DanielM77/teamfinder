class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
	  redirect_to root_path, :alert => exception.message
  end

  # @param [User] resource
  def after_sign_in_path_for(resource)
    stored_location_for(resource) ||
      if resource.is_a?(User)
        if resource.has_role?(:player)
          if PlayerProfile.with_role(:player, resource).empty?
            new_player_profile_url
          else
            player_profile = PlayerProfile.with_role(:player, resource).first
            player_profile_path(player_profile)
          end
        else
          if resource.has_role?(:club)
            if Club.with_role(:club, resource).empty?
              membership_url
            else
              club = Club.with_role(:club, resource).first
              club_path(club)
            end
          end
        end
      else
        super
      end
  end


end
