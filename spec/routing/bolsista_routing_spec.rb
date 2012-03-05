require "spec_helper"

describe BolsistaController do
  describe "routing" do

    it "routes to #index" do
      get("/bolsista").should route_to("bolsista#index")
    end

    it "routes to #new" do
      get("/bolsista/new").should route_to("bolsista#new")
    end

    it "routes to #show" do
      get("/bolsista/1").should route_to("bolsista#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bolsista/1/edit").should route_to("bolsista#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bolsista").should route_to("bolsista#create")
    end

    it "routes to #update" do
      put("/bolsista/1").should route_to("bolsista#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bolsista/1").should route_to("bolsista#destroy", :id => "1")
    end

  end
end
