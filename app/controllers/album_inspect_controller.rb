class AlbumInspectController < ApplicationController
  def albumInspect
  	@album_id = params[:album_id]
  	@album_title = params[:title]
  	@artist = params[:artist]
  	@rt = queryReleases
  end

  def queryReleases
    url = URI.parse('http://musicbrainz.org/ws/2/release-group/' + @album_id + '?&inc=releases+media&fmt=json')
	res = Net::HTTP.get_response(url)
	res_json = res.body
	res_hash = JSON.parse(res_json)["releases"]
	return res_hash
  end

  def songInspect
  	albumToQuery = params[:albumToQuery]
	url = URI.parse('http://musicbrainz.org/ws/2/release/' + albumToQuery + '?&inc=recordings&fmt=json')
	res = Net::HTTP.get_response(url)
	res_json = res.body
	@songs_list = JSON.parse(res_json)["media"].first["tracks"]
	#return res_hash
  end
end
