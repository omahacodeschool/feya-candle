require 'rails_helper'

RSpec.describe "locations/new", :type => :view do
  before(:each) do
    assign(:location, Location.new(
      :name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1,
      :phone => "MyString",
      :url => "MyString"
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input#location_name[name=?]", "location[name]"

      assert_select "input#location_address[name=?]", "location[address]"

      assert_select "input#location_city[name=?]", "location[city]"

      assert_select "input#location_state[name=?]", "location[state]"

      assert_select "input#location_zip[name=?]", "location[zip]"

      assert_select "input#location_phone[name=?]", "location[phone]"

      assert_select "input#location_url[name=?]", "location[url]"
    end
  end
end
