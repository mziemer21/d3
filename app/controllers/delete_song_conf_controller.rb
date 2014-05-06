class DeleteSongConfController < ApplicationController
  def deleteConfirm
    @song = Song.find(params[:song])
  end
end
