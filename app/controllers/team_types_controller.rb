class TeamTypesController < ApplicationController
  # GET /team_types
  # GET /team_types.json
  def index
    @team_types = TeamType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @team_types }
    end
  end

  # GET /team_types/1
  # GET /team_types/1.json
  def show
    @team_type = TeamType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @team_type }
    end
  end

  # GET /team_types/new
  # GET /team_types/new.json
  def new
    @team_type = TeamType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @team_type }
    end
  end

  # GET /team_types/1/edit
  def edit
    @team_type = TeamType.find(params[:id])
  end

  # POST /team_types
  # POST /team_types.json
  def create
    @team_type = TeamType.new(params[:team_type])

    respond_to do |format|
      if @team_type.save
        format.html { redirect_to @team_type, notice: 'Team type was successfully created.' }
        format.json { render json: @team_type, status: :created, location: @team_type }
      else
        format.html { render action: "new" }
        format.json { render json: @team_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /team_types/1
  # PUT /team_types/1.json
  def update
    @team_type = TeamType.find(params[:id])

    respond_to do |format|
      if @team_type.update_attributes(params[:team_type])
        format.html { redirect_to @team_type, notice: 'Team type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @team_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_types/1
  # DELETE /team_types/1.json
  def destroy
    @team_type = TeamType.find(params[:id])
    @team_type.destroy

    respond_to do |format|
      format.html { redirect_to team_types_url }
      format.json { head :no_content }
    end
  end
end
