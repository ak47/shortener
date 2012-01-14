require "spec_helper"

describe ShortiesController do
  describe "routing" do

    it "routes to #index" do
      get("/shorties").should route_to("shorties#index")
    end

    it "routes to #new" do
      get("/shorties/new").should route_to("shorties#new")
    end

    it "routes to #show" do
      get("/shorties/1").should route_to("shorties#show", :id => "1")
    end

    it "routes to #edit" do
      get("/shorties/1/edit").should route_to("shorties#edit", :id => "1")
    end

    it "routes to #create" do
      post("/shorties").should route_to("shorties#create")
    end

    it "routes to #update" do
      put("/shorties/1").should route_to("shorties#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/shorties/1").should route_to("shorties#destroy", :id => "1")
    end

  end
end
