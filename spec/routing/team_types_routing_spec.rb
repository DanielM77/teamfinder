require "spec_helper"

describe TeamTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/team_types").should route_to("team_types#index")
    end

    it "routes to #new" do
      get("/team_types/new").should route_to("team_types#new")
    end

    it "routes to #show" do
      get("/team_types/1").should route_to("team_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/team_types/1/edit").should route_to("team_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/team_types").should route_to("team_types#create")
    end

    it "routes to #update" do
      put("/team_types/1").should route_to("team_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/team_types/1").should route_to("team_types#destroy", :id => "1")
    end

  end
end
