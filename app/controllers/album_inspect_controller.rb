class AlbumInspectController < ApplicationController
  def albumInspect
  	@album_id = params[:album_id]
  	url = URI.parse('http://musicbrainz.org/ws/2/release-group/' + @album_id + '?&inc=releases+media+artists&fmt=json')
  	res = Net::HTTP.get_response(url)
  	res_json = res.body
  	full_hash = JSON.parse(res_json)
  	res_hash = full_hash["releases"]
  	@artist = full_hash["artist-credit"].first["name"]
  	@title = full_hash["title"]
  	@rt = res_hash
  end

  def songInspect #TODO 
  	albumToQuery = params[:albumToQuery]
  	url = URI.parse('http://musicbrainz.org/ws/2/release/' + albumToQuery + '?&inc=recordings+artists&fmt=json')
  	res = Net::HTTP.get_response(url)
  	res_json = res.body
  	full_hash = JSON.parse(res_json)
  	@songs_list = full_hash["media"].first["tracks"]
  	@artist = full_hash["artist-credit"].first["name"]
  	@title = full_hash["title"]
  	@releaseId = albumToQuery
    hash_songs_list = {list: @songs_list, artist: @artist, title: @title}
    session[:songs_list] = hash_songs_list
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
  	
	song_id = params[:songToQuery]
	url = URI.parse('http://musicbrainz.org/ws/2/recording/?query=rid:' + song_id + '&inc=artist-credits+releases&fmt=json')
	res = Net::HTTP.get_response(url)
	res_json = res.body
	res_hash = JSON.parse(res_json)["recording"].first
	@song = res_hash
	if params[:releaseId] #TODO
		isRelease = true
		album_id = params[:releaseId]
    else
    	isRelease = false
    	album_id = @song["releases"].first["release-group"]["id"]
    end
	@art_link = getArtWorkJson(album_id, isRelease)
  
  end

  def getArtWorkJson(album_id, isRelease) #coverartarchive.org/release-group/7ea84654-c110-3724-a99c-51d1a099e6a2
	if isRelease
		keyword = "release/"
	else 
		keyword = "release-group/"
	end
	url = 'http://coverartarchive.org/' + keyword + album_id
	res = fetch(url.strip, 10) #test
	if res != nil
		JSON.parse(res.body)["images"].first["thumbnails"]["small"]
	else
		""
	end
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
  end

end
