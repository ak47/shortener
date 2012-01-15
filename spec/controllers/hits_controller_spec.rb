require 'spec_helper'

describe HitsController do
  before (:each) do
    @user = Factory.create(:user)
    sign_in @user
  end

  describe "GET 'index'" do
    it "returns http success" do
      get :index, :shorty_id => '1'
      response.should be_success
    end
  end

end
