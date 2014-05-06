require 'spec_helper'

describe "songs/new" do
  before(:each) do
    assign(:song, stub_model(Song,
      :title => "song_title",
      :artist => "song_artist",
      :album => "song_album",
      :quality => 1,
      :fccFlag => false,
      :is_qDrive => false,
      :location => "song_location",
      :format => "song_format",
      :review => "song_review"
    ).as_new_record)
  end

  it "renders new song form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", songs_path, "post" do
      assert_select "input#song_title[name=?]", "song[title]"
      assert_select "input#song_artist[name=?]", "song[artist]"
      assert_select "input#song_album[name=?]", "song[album]"
      assert_select "input#song_quality[name=?]", "song[quality]"
      assert_select "input#song_fccFlag[name=?]", "song[fccFlag]"
      assert_select "input#song_is_qDrive[name=?]", "song[is_qDrive]"
      assert_select "input#song_location[name=?]", "song[location]"
      assert_select "input#song_format[name=?]", "song[format]"
      assert_select "textarea#song_review[name=?]", "song[review]"
    end
  end
end
