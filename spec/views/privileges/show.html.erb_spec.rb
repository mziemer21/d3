require 'spec_helper'

describe "privileges/show" do
  before(:each) do
    @privilege = assign(:privilege, stub_model(Privilege,
      :qDrive => false,
      :addSong => false,
      :editSong => false,
      :deleteSong => false,
      :grantPermission => false,
      :addUser => false,
      :editUser => false,
      :deleteUser => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
