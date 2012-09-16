require "spec_helper"

describe PublicOffersController do
  describe "routing" do

    it "routes to #index" do
      get("/public_offers").should route_to("public_offers#index")
    end

    it "routes to #new" do
      get("/public_offers/new").should route_to("public_offers#new")
    end

    it "routes to #show" do
      get("/public_offers/1").should route_to("public_offers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/public_offers/1/edit").should route_to("public_offers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/public_offers").should route_to("public_offers#create")
    end

    it "routes to #update" do
      put("/public_offers/1").should route_to("public_offers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/public_offers/1").should route_to("public_offers#destroy", :id => "1")
    end

  end
end
