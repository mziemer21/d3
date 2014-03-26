require 'spec_helper'

describe "privileges/new" do
  before(:each) do
    assign(:privilege, stub_model(Privilege,
      :qDrive => false,
      :addSong => false,
      :editSong => false,
      :deleteSong => false,
      :grantPermission => false,
      :addUser => false,
      :editUser => false,
      :deleteUser => false
    ).as_new_record)
  end

  it "renders new privilege form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", privileges_path, "post" do
      assert_select "input#privilege_qDrive[name=?]", "privilege[qDrive]"
      assert_select "input#privilege_addSong[name=?]", "privilege[addSong]"
      assert_select "input#privilege_editSong[name=?]", "privilege[editSong]"
      assert_select "input#privilege_deleteSong[name=?]", "privilege[deleteSong]"
      assert_select "input#privilege_grantPermission[name=?]", "privilege[grantPermission]"
      assert_select "input#privilege_addUser[name=?]", "privilege[addUser]"
      assert_select "input#privilege_editUser[name=?]", "privilege[editUser]"
      assert_select "input#privilege_deleteUser[name=?]", "privilege[deleteUser]"
    end
  end
end
