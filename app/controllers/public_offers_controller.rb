class PublicOffersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :setup_club
  def setup_club
    if params.has_key?(:club_id)
      @club = Club.find(params[:club_id])
    end

  end
  # GET /public_offers
  # GET /public_offers.json
  def index
      @public_offers = @club.public_offers
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @offers }
    end
  end

  # GET /public_offers/1
  # GET /public_offers/1.json
  def show
    @public_offer = PublicOffer.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @public_offer }
    end
  end

  # GET /public_offers/new
  # GET /public_offers/new.json
  def new

    @public_offer = @club.public_offers.build
    @public_offer.user_id=current_user
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @public_offer }
    end
  end

  # GET /public_offers/1/edit
  def edit
    @public_offer = PublicOffer.find(params[:id])
  end

  # POST /public_offers
  # POST /public_offers.json
  def create
    @public_offer = @club.public_offers.build(params[:public_offer])
    @public_offer.user_id = current_user.id
    #@offer = Offer.new(params[:offer])
    #@offer.user_id = current_user.id
    respond_to do |format|
      if @public_offer.save
        format.html { redirect_to club_public_offers_path(@club), notice: 'Das Angebot wurde erstellt.' }
        format.json { render json: @public_offer, status: :created, location: @public_offer }
      else
        format.html { render action: "new" }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /public_offers/1
  # PUT /public_offers/1.json
  def update
    @public_offer = PublicOffer.find(params[:id])

    respond_to do |format|
      if @public_offer.update_attributes(params[:public_offer])
        format.html { redirect_to club_public_offers_path(@club), notice: 'Das Angebot wurde aktualisiert.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public_offers/1
  # DELETE /public_offers/1.json
  def destroy
    @public_offer = PublicOffer.find(params[:id])
    @public_offer.destroy

    respond_to do |format|
      format.html { redirect_to club_path(@team.club), notice: 'Das Angebot wurde geloescht' }
      format.json { head :no_content }
    end
  end

end
