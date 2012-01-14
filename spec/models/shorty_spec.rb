require 'spec_helper'

describe Shorty do
  it "is valid from the factory" do
    Factory.create(:shorty).should be_valid
  end

  it "requires a url" do
    Factory.build(:shorty, :url => '').should_not be_valid
  end

  describe "a key is generated from url attribute" do
    it "for persisted objects" do
      Factory.create(:shorty).key.should_not be_blank
    end

    it "and updates when object url changes" do
      shorty = Factory.create(:shorty)
      orig_key = shorty.key
      shorty.update_attributes(:url => 'boomba')
      orig_key.should_not == shorty.key
    end
  end

end
