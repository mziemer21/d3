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

  def songInspect #TODO 
  	albumToQuery = params[:albumToQuery]
  	url = URI.parse('http://musicbrainz.org/ws/2/release/' + albumToQuery + '?&inc=recordings&fmt=json')
  	res = Net::HTTP.get_response(url)
  	res_json = res.body
  	@songs_list = JSON.parse(res_json)["media"].first["tracks"]
  	#return res_hash
  end

  def artistInspect
    @artist_id = params[:artist_id]
    @artist_name = params[:name]    
    @rt = queryAlbumsByArid(@artist_id)
  end

  def queryAlbumsByArid(artist_id)
    url = URI.parse('http://musicbrainz.org/ws/2/release/?query=arid:' + artist_id + '&fmt=json')
    res = Net::HTTP.get_response(url)
    res_json = res.body
    res_hash = JSON.parse(res_json)["releases"]
    return res_hash
  end

  def singleSongInspect
  	@song = params[:entry]
  	release_group_id = @song["releases"].first["release-group"]["id"]
  	#@art_link = getArtWorkJson(release_group_id)["images"].first["image"]
  	@art_link = getArtWorkJson(release_group_id)
  end

  def getArtWorkJson(release_group_id) #coverartarchive.org/release-group/7ea84654-c110-3724-a99c-51d1a099e6a2
	url = 'http://coverartarchive.org/release-group/' + release_group_id
	res = fetch(url.strip, 10) #test
	if res != nil
		JSON.parse(res.body)["images"].first["thumbnails"]["small"]
	else
		""
	end
    #return sec_url
  end

  def fetch(url, limit)
	raise ArgumentError, 'too many HTTP redirects' if limit == 0
	url = URI.parse(url)
    res = Net::HTTP.get_response(url)
    case res
	  when Net::HTTPSuccess then
	    res
	  when Net::HTTPRedirection then
	    location = res['location']
	    warn "redirected to #{location}"
	    fetch(location , limit - 1)
	  else
	    nil
	  end
    #return sec_url
  
  end

end
