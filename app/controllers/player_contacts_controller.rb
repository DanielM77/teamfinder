class PlayerContactsController < ApplicationController
  # GET /player_contacts
  # GET /player_contacts.json
  before_filter :authenticate_user!
  before_filter :setup_offer
  load_and_authorize_resource

  def setup_offer
    @public_offer = PublicOffer.find(params[:public_offer_id])
  end

  def index
    @player_contacts = @public_offer.player_contacts

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @player_contacts }
    end
  end

  # GET /player_contacts/1
  # GET /player_contacts/1.json
  def show
    @player_contact = @public_offer.player_contacts.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @player_contact }
    end
  end

  # GET /player_contacts/new
  # GET /player_contacts/new.json
  def new
    unless PlayerProfile.with_role(:player,current_user).empty?
      @player_profile = PlayerProfile.with_role(:player,current_user).first
      @default_contact_attributes = @player_profile.create_contact_defaults
    end
    @player_contact = @public_offer.player_contacts.build(@default_contact_attributes)
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @player_contact }
    end
  end

  # GET /player_contacts/1/edit
  def edit
    @player_contact = PlayerContact.find(params[:id])
  end

  # POST /player_profiles
  # POST /player_profiles.json
  def create
    @player_contact = @public_offer.player_contacts.build(params[:player_contact])
    @player_contact.status='angefragt'
    respond_to do |format|
      if @player_contact.save
        current_user.add_role(:player,@player_contact)
        user = User.find(@public_offer.user_id)
        user.add_role(:club,@player_contact)
        format.html { redirect_to market_index_path, notice: 'Deine Anfrage wurde erfolgreich verschickt' }
        format.json { render json: @player_contact, status: :created, location: @player_contact }
      else
        format.html { render action: "new" }
        format.json { render json: @player_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /player_contacts/1
  # PUT /player_contacts/1.json
  def update
    @player_contact = PlayerContact.find(params[:id])
    respond_to do |format|
      if @player_contact.update_attributes(params[:player_contact])
        format.html { redirect_to root_path, notice: 'Deine Anfrage wurde angepasst.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @player_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_contacts/1
  # DELETE /player_contacts/1.json
  def destroy
    @player_contact = PlayerContact.find(params[:id])
    @player_contact.destroy

    respond_to do |format|
      format.html { redirect_to player_contacts_url }
      format.json { head :no_content }
    end
  end
end