require 'spec_helper'

describe AddPageController do

  describe "GET 'addSingleSong'" do
    it "returns http success" do
      get 'addSingleSong'
      response.should be_success
    end
  end

end
