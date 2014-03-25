require 'spec_helper'

describe "playlists/edit" do
  before(:each) do
    @playlist = assign(:playlist, stub_model(Playlist,
      :users => 1,
      :title => "MyText",
      :songs => 1,
      :qDrive => false,
      :notes => "MyText"
    ))
  end

  it "renders the edit playlist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", playlist_path(@playlist), "post" do
      assert_select "input#playlist_users[name=?]", "playlist[users]"
      assert_select "textarea#playlist_title[name=?]", "playlist[title]"
      assert_select "input#playlist_songs[name=?]", "playlist[songs]"
      assert_select "input#playlist_qDrive[name=?]", "playlist[qDrive]"
      assert_select "textarea#playlist_notes[name=?]", "playlist[notes]"
    end
  end
end
