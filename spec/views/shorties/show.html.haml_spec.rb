require 'spec_helper'

describe "shorties/show" do
  before(:each) do
    @shorty = assign(:shorty, stub_model(Shorty,
      :url => "MyText",
      :key => "Key"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Key/)
  end
end
