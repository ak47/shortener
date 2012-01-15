require 'spec_helper'

describe Shorty do
  it "is valid from the factory" do
    Factory.create(:shorty).should be_valid
  end

  it "requires a url" do
    Factory.build(:shorty, :url => '').should_not be_valid
  end

  it "requires a user" do
    Factory.build(:shorty, :user => nil).should_not be_valid
  end

  describe '.per_user' do
    it "filters shorties selected to those associated with a user" do
      user1 = Factory.create(:user)
      user2 = Factory.create(:user)

      3.times{ Factory.create(:shorty, :user => user1) }
      3.times{ Factory.create(:shorty, :user => user2) }
      Shorty.count.should == 6
      Shorty.per_user(user1).count.should == 3
    end
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
