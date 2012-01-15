require 'spec_helper'

describe RedirectersController do

  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
      response.should be_success
    end

    it "redirects with a shorty key" do
      shorty = Factory.create(:shorty)
      get 'show', :key => shorty.key
      response.should be_redirect
    end
  end

end
