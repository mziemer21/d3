require 'spec_helper'

describe "songs/edit" do
  before(:each) do
    @song = assign(:song, stub_model(Song,
      :title => "MyString",
      :artist => "MyString",
      :album => "MyString",
      :quality => 1,
      :fccClean => false,
      :is_qDrive => false,
      :location => "MyString",
      :format => "MyString",
      :review => "MyText"
    ))
  end

  it "renders the edit song form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", song_path(@song), "post" do
      assert_select "input#song_title[name=?]", "song[title]"
      assert_select "input#song_artist[name=?]", "song[artist]"
      assert_select "input#song_album[name=?]", "song[album]"
      assert_select "input#song_quality[name=?]", "song[quality]"
      assert_select "input#song_fccClean[name=?]", "song[fccClean]"
      assert_select "input#song_is_qDrive[name=?]", "song[is_qDrive]"
      assert_select "input#song_location[name=?]", "song[location]"
      assert_select "input#song_format[name=?]", "song[format]"
      assert_select "textarea#song_review[name=?]", "song[review]"
    end
  end
end
