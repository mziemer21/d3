# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# script getting song json for crate playlist view from http://loopj.com/jquery-tokeninput/
$ ->
  # specify id to apply script and json source
  $('#playlist_song_tokens').tokenInput('/songs.json',
  	# theme
    theme: 'facebook'
    # search song title (default is name)
    propertyToSearch: 'title'
    # on page load if values are already present load them
    prePopulate: $('#playlist_song_tokens').data('load')
  )