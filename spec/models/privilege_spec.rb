require 'spec_helper'

describe Privilege do

  before do
    @privilege = Privilege.new(qDrive: false, addSong: true, deleteSong: false, grantPermission: true, addUser: false, editUser: true, deleteUser: false, editSong: true)
  end
  
  subject { @privilege }

  it { should respond_to(:qDrive) }
  it { should respond_to(:addSong) }
  it { should respond_to(:editSong) }
  it { should respond_to(:deleteSong)}
  it { should respond_to(:grantPermission) }
  it { should respond_to(:addUser) }
  it { should respond_to(:editUser)}
  it { should respond_to(:deleteUser) }

  describe "when qDrive is empty" do
    before { @privilege.qDrive = nil }
    it { should_not be_valid }
  end
  
  describe "when addSong is empty" do
    before { @privilege.addSong = nil }
    it { should_not be_valid }
  end
  
  describe "when deleteSong is empty" do
    before { @privilege.deleteSong = nil }
    it { should_not be_valid }
  end
  
   describe "when grantPermission is empty" do
    before { @privilege.grantPermission = nil }
    it { should_not be_valid }
   end
   
    describe "when addUser is empty" do
    before { @privilege.addUser = nil }
    it { should_not be_valid }
  end
  
  describe "when deleteUser is empty" do
    before { @privilege.deleteUser = nil }
    it { should_not be_valid }
  end
  
   describe "when editUser is empty" do
    before { @privilege.editUser = nil }
    it { should_not be_valid }
end

   describe "when editSong is empty" do
    before { @privilege.editSong = nil }
    it { should_not be_valid }
end
end
