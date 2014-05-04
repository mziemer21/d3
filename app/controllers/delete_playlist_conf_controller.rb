class DeletePlaylistConfController < ApplicationController
  def deleteConfirm
        @playlistID = params[:playlistID]
        
        @playlist = Playlist.find(@playlistID)
  end
end
