class AlbumInspectController < ApplicationController
  def albumInspect
  	@album_id = params[:album]
  	@album_title = params[:title]
  	@artist = params[:artist]
  	@rt = queryReleases
  end

  def queryReleases
    url = URI.parse('http://musicbrainz.org/ws/2/release-group/' + @album_id + '?&inc=releases&fmt=json')
	res = Net::HTTP.get_response(url)
	res_json = res.body
	res_hash = JSON.parse(res_json)["releases"]
	return res_hash
  end
end
