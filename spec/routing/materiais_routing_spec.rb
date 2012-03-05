require "spec_helper"

describe MateriaisController do
  describe "routing" do

    it "routes to #index" do
      get("/materiais").should route_to("materiais#index")
    end

    it "routes to #new" do
      get("/materiais/new").should route_to("materiais#new")
    end

    it "routes to #show" do
      get("/materiais/1").should route_to("materiais#show", :id => "1")
    end

    it "routes to #edit" do
      get("/materiais/1/edit").should route_to("materiais#edit", :id => "1")
    end

    it "routes to #create" do
      post("/materiais").should route_to("materiais#create")
    end

    it "routes to #update" do
      put("/materiais/1").should route_to("materiais#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/materiais/1").should route_to("materiais#destroy", :id => "1")
    end

  end
end
