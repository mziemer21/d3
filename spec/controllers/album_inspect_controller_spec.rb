require 'spec_helper'

describe AlbumInspectController do

  describe "GET 'albumInspect'" do
    it "returns http success" do
      get 'albumInspect'
      response.should be_success
    end
  end

end
