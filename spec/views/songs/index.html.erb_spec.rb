require 'spec_helper'

describe "songs/index" do
  before(:each) do
    assign(:songs, [
      stub_model(Song,
        :title => "Title",
        :artist => "Artist",
        :album => "Album",
        :quality => 1,
        :fccClean => false,
        :is_qDrive => false,
        :location => "Location",
        :format => "Format",
        :review => "MyText"
      ),
      stub_model(Song,
        :title => "Title",
        :artist => "Artist",
        :album => "Album",
        :quality => 1,
        :fccClean => false,
        :is_qDrive => false,
        :location => "Location",
        :format => "Format",
        :review => "MyText"
      )
    ])
  end

  it "renders a list of songs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Artist".to_s, :count => 2
    assert_select "tr>td", :text => "Album".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Format".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
