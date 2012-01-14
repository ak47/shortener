require 'spec_helper'

describe "shorties/new" do
  before(:each) do
    assign(:shorty, Factory.build(:shorty))
  end

  it "renders new shorty form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shorties_path, :method => "post" do
      assert_select "textarea#shorty_url", :name => "shorty[url]"
    end
  end
end
