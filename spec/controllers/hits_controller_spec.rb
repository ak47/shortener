require 'spec_helper'

describe HitsController do

  describe "GET 'index'" do
    it "returns http success" do
      get :index, :shorty_id => '1'
      response.should be_success
    end
  end

end
