require "spec_helper"

describe TipomaterialsController do
  describe "routing" do

    it "routes to #index" do
      get("/tipomaterials").should route_to("tipomaterials#index")
    end

    it "routes to #new" do
      get("/tipomaterials/new").should route_to("tipomaterials#new")
    end

    it "routes to #show" do
      get("/tipomaterials/1").should route_to("tipomaterials#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipomaterials/1/edit").should route_to("tipomaterials#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipomaterials").should route_to("tipomaterials#create")
    end

    it "routes to #update" do
      put("/tipomaterials/1").should route_to("tipomaterials#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipomaterials/1").should route_to("tipomaterials#destroy", :id => "1")
    end

  end
end
