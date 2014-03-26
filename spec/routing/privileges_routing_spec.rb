require "spec_helper"

describe PrivilegesController do
  describe "routing" do

    it "routes to #index" do
      get("/privileges").should route_to("privileges#index")
    end

    it "routes to #new" do
      get("/privileges/new").should route_to("privileges#new")
    end

    it "routes to #show" do
      get("/privileges/1").should route_to("privileges#show", :id => "1")
    end

    it "routes to #edit" do
      get("/privileges/1/edit").should route_to("privileges#edit", :id => "1")
    end

    it "routes to #create" do
      post("/privileges").should route_to("privileges#create")
    end

    it "routes to #update" do
      put("/privileges/1").should route_to("privileges#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/privileges/1").should route_to("privileges#destroy", :id => "1")
    end

  end
end
