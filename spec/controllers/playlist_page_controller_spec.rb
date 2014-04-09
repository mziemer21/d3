require 'spec_helper'

describe PlaylistPageController do

  describe "GET 'plists'" do
    it "returns http success" do
      get 'plists'
      response.should be_success
    end
  end

end
