require 'spec_helper'

describe Song do
  
    before do
    @song = Song.new(title: "Party All The Time", artist: "Eddie Murphy", album: "Ultimate Party Mixx", duration: "03:%14", fccFlag: false, is_qDrive: true)
  end

  subject { @song }
  
  it { should respond_to(:title) }
  it { should respond_to(:artist) }
  it { should respond_to(:album) }
  it { should respond_to(:duration) }
  it { should respond_to(:fccClean) }
  it { should respond_to(:is_qDrive) }
  
  describe "when title is empty" do
    before { @song.title = "" }
    it { should_not be_valid }
  end
  
  describe "when album is empty" do
    before { @song.album = "" }
    it { should_not be_valid }
  end   
  
  describe "when artist is empty" do
    before { @song.artist = "" }
    it { should_not be_valid }
  end
  
  describe "when quality is empty" do
    before { @song.duration = nil }
    it { should_not be_valid }
  end
  
  describe "when quality is empty" do
    before { @song.quality = nil }
    it { should_not be_valid }
  end
  
  describe "when quality is empty" do
    before { @song.fccClean = nil }
    it { should_not be_valid }
  end
  
   describe "when quality is empty" do
    before { @song.is_qDrive = nil }
    it { should_not be_valid }
  end

end

