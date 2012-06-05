class LeagueTypesController < ApplicationController
  # GET /league_types
  # GET /league_types.json
  def index
    @league_types = LeagueType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @league_types }
    end
  end

  # GET /league_types/1
  # GET /league_types/1.json
  def show
    @league_type = LeagueType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @league_type }
    end
  end

  # GET /league_types/new
  # GET /league_types/new.json
  def new
    @league_type = LeagueType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @league_type }
    end
  end

  # GET /league_types/1/edit
  def edit
    @league_type = LeagueType.find(params[:id])
  end

  # POST /league_types
  # POST /league_types.json
  def create
    @league_type = LeagueType.new(params[:league_type])

    respond_to do |format|
      if @league_type.save
        format.html { redirect_to @league_type, notice: 'League type was successfully created.' }
        format.json { render json: @league_type, status: :created, location: @league_type }
      else
        format.html { render action: "new" }
        format.json { render json: @league_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /league_types/1
  # PUT /league_types/1.json
  def update
    @league_type = LeagueType.find(params[:id])

    respond_to do |format|
      if @league_type.update_attributes(params[:league_type])
        format.html { redirect_to @league_type, notice: 'League type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @league_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /league_types/1
  # DELETE /league_types/1.json
  def destroy
    @league_type = LeagueType.find(params[:id])
    @league_type.destroy

    respond_to do |format|
      format.html { redirect_to league_types_url }
      format.json { head :no_content }
    end
  end
end
