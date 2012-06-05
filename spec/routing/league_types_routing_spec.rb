require "spec_helper"

describe LeagueTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/league_types").should route_to("league_types#index")
    end

    it "routes to #new" do
      get("/league_types/new").should route_to("league_types#new")
    end

    it "routes to #show" do
      get("/league_types/1").should route_to("league_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/league_types/1/edit").should route_to("league_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/league_types").should route_to("league_types#create")
    end

    it "routes to #update" do
      put("/league_types/1").should route_to("league_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/league_types/1").should route_to("league_types#destroy", :id => "1")
    end

  end
end
