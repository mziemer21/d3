class PlaylistPageController < ApplicationController
  #def plists
  #  @songs = Song.order(:artist)
  #end

  def plists
    @songs = Song.order(:artist)

    @playlists = User.first.playlists

    respond_to do |format|
      format.html
      # json for all songs specified by query param q
      format.json { render json: @songs.tokens(params[:q]) }
    end
  end


  def remove_song
    myPlist = Playlist.find(params[:playlist_id])
    mySong = Song.find(params[:song_id])
    myPlist.songs.delete(mySong)
    #debugger
    redirect_to myplaylists_path, notice: 'Song successfully removed'
  end

  #def post
  #end


  def singleton
  end

end
