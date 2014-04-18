class SongInspectController < ApplicationController
  
  def songInspect
    @song = Song.find(params[:song])
  end
end
