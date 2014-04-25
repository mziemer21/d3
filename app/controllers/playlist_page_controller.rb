class PlaylistPageController < ApplicationController
  #def plists
  #  @songs = Song.order(:artist)
  #end

  def plists
    @songs = Song.order(:artist)

    @playlists = User.first.playlist

    respond_to do |format|
      format.html
      # json for all songs specified by query param q
      format.json { render json: @songs.tokens(params[:q]) }
    end
  end


  #def post
  #end


  def singleton
  end

end
