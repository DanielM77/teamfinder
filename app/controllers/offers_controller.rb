class OffersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :setup_team_or_club
  def setup_team_or_club
    if params.has_key?(:team_id)
      @team = Team.find(params[:team_id])
    end
    if params.has_key?(:club_id)
      @club = Club.find(params[:club_id])
    end

  end
  # GET /offers
  # GET /offers.json
  def index
    if @club
      @offers = @club.offers
    else
      @offers = @team.offers
      @club = @team.club
    end
    #@offers = Offer.find_all_by_user_id(current_user)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @offers }
    end
  end

  # GET /offers/1
  # GET /offers/1.json
  def show
    @offer = Offer.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @offer }
    end
  end

  # GET /offers/new
  # GET /offers/new.json
  def new

    @offer = @team.offers.build
    @offer.user_id=current_user
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @offer }
    end
  end

  # GET /offers/1/edit
  def edit
    @offer = Offer.find(params[:id])
  end

  # POST /offers
  # POST /offers.json
  def create
    @offer = @team.offers.build(params[:offer])
    #@offer = Offer.new(params[:offer])
    @offer.user_id = current_user.id
    respond_to do |format|
      if @offer.save
        format.html { redirect_to team_offers_path(@team), notice: 'Offer was successfully created.' }
        format.json { render json: @offer, status: :created, location: @offer }
      else
        format.html { render action: "new" }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /offers/1
  # PUT /offers/1.json
  def update
    @offer = Offer.find(params[:id])

    respond_to do |format|
      if @offer.update_attributes(params[:offer])
        format.html { redirect_to team_offers_path(@team), notice: 'Offer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offers/1
  # DELETE /offers/1.json
  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy

    respond_to do |format|
      format.html { redirect_to offers_url }
      format.json { head :no_content }
    end
  end
end
