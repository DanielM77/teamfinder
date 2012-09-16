class PlayerProfilesController < ApplicationController
  before_filter :authenticate_user!
  #load_and_authorize_resource :only => [ :index, :show, :update ]
  load_and_authorize_resource
  # GET /player_profiles
  # GET /player_profiles.json
  def index
    @player_profiles = PlayerProfile.with_role(:player, current_user).map{|player| player.id}
  end

  # GET /player_profiles/1
  # GET /player_profiles/1.json
  def show
    @player_profile = PlayerProfile.find(params[:id])
    @player_contacts = PlayerContact.with_role(:player,current_user)
    @club_contacts = ClubContact.with_role(:player,current_user)
  end

  # GET /player_profiles/new
  # GET /player_profiles/new.json
  def new
    @player_profile = PlayerProfile.new
  end

  # GET /player_profiles/1/edit
  def edit
    @player_profile = PlayerProfile.find(params[:id])
  end

  # POST /player_profiles
  # POST /player_profiles.json
  def create
    @player_profile = PlayerProfile.new(params[:player_profile])
    @player_profile.user_id = current_user.id
    if @player_profile.save
      current_user.add_role("player",@player_profile)
       redirect_to @player_profile, notice: 'Dein Profil wurde erfolgreich erstellt.'
    else
      render action: "new"
    end
  end

  # PUT /player_profiles/1
  # PUT /player_profiles/1.json
  def update
    @player_profile = PlayerProfile.find(params[:id])
    if @player_profile.update_attributes(params[:player_profile])
      redirect_to @player_profile, notice: 'Dein Profil wurde erfolgreich aktualisiert.'
    else
       render action: "edit"
    end
  end

  # DELETE /player_profiles/1
  # DELETE /player_profiles/1.json
  def destroy
    @player_profile = PlayerProfile.find(params[:id])
    @player_profile.destroy
    redirect_to player_profils_url
  end
end
