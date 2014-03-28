require 'spec_helper'

describe "songs/show" do
  before(:each) do
    @song = assign(:song, stub_model(Song,
      :title => "Title",
      :artist => "Artist",
      :album => "Album",
      :quality => 1,
      :fccClean => false,
      :is_qDrive => false,
      :location => "Location",
      :format => "Format",
      :review => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Artist/)
    rendered.should match(/Album/)
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/Location/)
    rendered.should match(/Format/)
    rendered.should match(/MyText/)
  end
end
