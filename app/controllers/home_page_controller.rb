class HomePageController < ApplicationController
  def home
    @playlists = User.first.playlists #TESTING
  end

  def newest_plists
    @playlists.last(5).reverse
  end

end
