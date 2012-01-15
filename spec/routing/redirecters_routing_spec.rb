require "spec_helper"

describe RedirectersController do
  describe "routing" do

    it "routes to #show" do
      get("/redirecter").should route_to("redirecters#show")
    end

    it "routes to #show" do
      {:get => "some_key"}.should route_to(:controller => "redirecters",
                                              :action => "show",
                                              :key => 'some_key')
    end

  end
end
