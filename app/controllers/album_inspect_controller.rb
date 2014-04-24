class AlbumInspectController < ApplicationController
  def albumInspect
  	@album_id = params[:album]
  end
end
