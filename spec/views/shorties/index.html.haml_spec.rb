require 'spec_helper'

describe "shorties/index" do
  before(:each) do
    assign(:shorties, [
      stub_model(Shorty,
        :url => "MyText",
        :key => "Key"
      ),
      stub_model(Shorty,
        :url => "MyText",
        :key => "Key"
      )
    ])
  end

  it "renders a list of shorties" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Key".to_s, :count => 2
  end
end
