class TeamsController < ApplicationController
  before_filter :setup_club
  def setup_club
    @club = Club.find(params[:club_id])
  end
  # GET /teams
  # GET /teams.json

  def index
    @teams = @club.teams

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teams }
    end
  end

  # GET /teams/1
  # GET /teams/1.json
  def show
    @team = @club.teams.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @team }
    end
  end

  # GET /teams/new
  # GET /teams/new.json
  def new
    @team = @club.teams.build

    respond_to do |format|
      format.html 
      format.json { render json: @team }
      format.js
    end
  end

  # GET /teams/1/edit
  def edit
    @team = Team.find(params[:id])
  end

  # POST /teams
  # POST /teams.json
  # POST /teams.js
  def create
    @team = @club.teams.build(params[:team])

    respond_to do |format|
      if @team.save
        format.html { redirect_to club_path(@club), notice: 'Mannschaft wurde erstellt. (though in html)' }
        format.json { render json: @team, status: :created, location: @team }
        format.js
      else
        format.html { render action: "new" }
        format.json { render json: @team.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PUT /teams/1
  # PUT /teams/1.json
  def update
    @team = @club.teams.find(params[:id])

    respond_to do |format|
      if @team.update_attributes(params[:team])
        format.html { redirect_to club_path(@club), notice: 'Mannschaft wurde aktualisiert.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @team = @club.teams.find(params[:id])
    @team.destroy

    respond_to do |format|
      format.html { redirect_to club_teams_url(@club.id) }
      format.json { head :no_content }
    end
  end
end
