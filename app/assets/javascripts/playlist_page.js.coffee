# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# script getting song json for crate playlist view from http://loopj.com/jquery-tokeninput/
$ ->
  # specify id to apply script and json source
  $('#playlist_song_tokens').tokenInput('/songs.json',
    propertyToSearch: 'title',
    prePopulate: $('#playlist_song_tokens').data('load'),
    resultsLimit: 20,

    resultsFormatter: `function(item){ 
    	var img;
    	if (item.fccClean == true)
    	{
    		img = "<img src='https://wikidocs.adobe.com/wiki/s/en_GB/3295/19/_/images/icons/emoticons/check.png'/>"
    	} else {
    		img = "<img src='http://png-4.findicons.com/files/icons/1620/crystal_project/16/gg_ignored.png'/>"
    	}

    	return "<li><div class='playlist_add_results'><span>" + item.title + " By:" + item.artist + " FCC Clean:" + img + "</span></div></li>" }`,

    tokenFormatter: `function(item){ 
    	var img;
    	if (item.fccClean == true)
    	{
    		img = "<img src='https://wikidocs.adobe.com/wiki/s/en_GB/3295/19/_/images/icons/emoticons/check.png' class='playlist_clean_img'/>"
    	} else {
    		img = "<img src='http://png-4.findicons.com/files/icons/1620/crystal_project/16/gg_ignored.png'/>"
    	}

    	return "<li><div class='playlist_add_results'><span>" + item.title + " By:" + item.artist + " FCC Clean:" + img + "</span></div></li>" }`
  )