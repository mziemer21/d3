require 'spec_helper'

describe "privileges/index" do
  before(:each) do
    assign(:privileges, [
      stub_model(Privilege,
        :qDrive => false,
        :addSong => false,
        :editSong => false,
        :deleteSong => false,
        :grantPermission => false,
        :addUser => false,
        :editUser => false,
        :deleteUser => false
      ),
      stub_model(Privilege,
        :qDrive => false,
        :addSong => false,
        :editSong => false,
        :deleteSong => false,
        :grantPermission => false,
        :addUser => false,
        :editUser => false,
        :deleteUser => false
      )
    ])
  end

  it "renders a list of privileges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
