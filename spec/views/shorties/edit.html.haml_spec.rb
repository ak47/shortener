require 'spec_helper'

describe "shorties/edit" do
  before(:each) do
    @shorty = assign(:shorty, Factory.create(:shorty))
  end

  it "renders the edit shorty form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shorties_path(@shorty), :method => "post" do
      assert_select "textarea#shorty_url", :name => "shorty[url]"
    end
  end
end
