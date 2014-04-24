class PlaylistPageController < ApplicationController
  #def plists
  #  @songs = Song.order(:artist)
  #end

  def plists
    @songs = Song.order(:artist)

    respond_to do |format|
      format.html
      # json for all songs specified by query param q
      format.json { render json: @songs.tokens(params[:q]) }
    end
  end


  def singleton
  end

  '''def containsExplicit?
    for song in @songs
    
      if !song.fccClean
        return true
      end

    end

    false

  end'''


end
