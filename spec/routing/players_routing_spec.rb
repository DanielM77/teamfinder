require "spec_helper"

describe PlayerProfilesController do
  describe "routing" do

    it "routes to #index" do
      get("/player_profiles").should route_to("player_profiles#index")
    end

    it "routes to #new" do
      get("/player_profiles/new").should route_to("player_profiles#new")
    end

    it "routes to #show" do
      get("/player_profiles/1").should route_to("player_profiles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/player_profiles/1/edit").should route_to("player_profiles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/player_profiles").should route_to("player_profiles#create")
    end

    it "routes to #update" do
      put("/player_profiles/1").should route_to("player_profiles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/player_profiles/1").should route_to("player_profiles#destroy", :id => "1")
    end

  end
end
