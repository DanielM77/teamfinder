class PlayerContactsController < ApplicationController
  # GET /player_contacts
  # GET /player_contacts.json
  before_filter :setup_offer

  def setup_offer
    @offer = Offer.find(params[:offer_id])
  end

  def index
    @player_contacts = @offer.player_contacts

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @player_contacts }
    end
  end

  # GET /player_contacts/1
  # GET /player_contacts/1.json
  def show
    @player_contact = @offer.player_contacts.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @player_contact }
    end
  end

  # GET /player_contacts/new
  # GET /player_contacts/new.json
  def new
    @player_contact = @offer.player_contacts.build

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
    @player_contact = @offer.player_contacts.build(params[:player_contact])

    respond_to do |format|
      if @player_contact.save
        #current_user.add_role("player",@player_contact)
        if Player.with_role(:player,current_user).empty?
          @player_profile = @player_contact.create_profile
          @player_profile.save
          current_user.add_role("player",@player)
        end

        format.html { redirect_to offer_player_contact_path(@offer,@player_contact), notice: 'Contact of Player was successfully created.' }
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
        format.html { redirect_to @player_contact, notice: 'Contact was successfully updated.' }
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