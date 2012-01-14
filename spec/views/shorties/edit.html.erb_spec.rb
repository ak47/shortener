require 'spec_helper'

describe "shorties/edit" do
  before(:each) do
    @shorty = assign(:shorty, stub_model(Shorty,
      :url => "MyText",
      :key => "MyString"
    ))
  end

  it "renders the edit shorty form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => shorties_path(@shorty), :method => "post" do
      assert_select "textarea#shorty_url", :name => "shorty[url]"
      assert_select "input#shorty_key", :name => "shorty[key]"
    end
  end
end
