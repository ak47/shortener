require 'spec_helper'

describe Shorty do
  it "is valid from the factory" do
    Factory.create(:shorty).should be_valid
  end
  
  it "requires a url" do
    Factory.build(:shorty, :url => '').should_not be_valid
  end
end
