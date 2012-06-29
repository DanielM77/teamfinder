class ClubContactsController < ApplicationController
  before_filter :setup_player_and_club
  #load_and_authorize_resource

  def setup_player_and_club
    @player_profile = PlayerProfile.find(params[:player_profile_id]) if params.has_key?(:player_profile_id)
    @club = Club.with_role(:club_superuser,current_user).first()
  end

  def index
    #@club_contacts = ClubContact.with_role(:club_superuser, current_user).map{|club| club.id}
    @club_contacts = ClubContact.all
  end

  # GET /clubs/1
  # GET /clubs/1.json
  def show
    @club_contact = ClubContact.find(params[:id])
  end

  # GET /clubs/new
  # GET /clubs/new.json
  def new
    @club_contact = @player_profile.club_contacts.build
  end

  # GET /clubs/1/edit
  def edit
    @club_contact = ClubContact.find(params[:id])
  end

  # POST /clubs
  # POST /clubs.json
  def create
    @club_contact = @player_profile.club_contacts.new(params[:club_contact])
      if @club_contact.save
        current_user.add_role("club_superuser",@club_contact)
        redirect_to @club_contact, notice:'ClubContact was successfully created.'
      else
        render action: "new"
      end
  end

  # PUT /clubs/1
  # PUT /clubs/1.json
  def update
    @club_contact = ClubContact.find(params[:id])

      if @club_contact.update_attributes(params[:@club_contact])
        redirect_to @club_contact, notice:'ClubContact was successfully updated.'
      else
        render action: "edit"
      end
  end

  # DELETE /clubs/1
  # DELETE /clubs/1.json
  def destroy
    @club_contact = ClubContact.find(params[:id])
    @club_contact.destroy
    redirect_to club_contacts_url
  end
end
