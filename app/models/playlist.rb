class Playlist < ActiveRecord::Base
	has_and_belongs_to_many :songs, :join_table => "playlists_songs"
	belongs_to :user

	# getter for adding songs to playlist
	attr_reader :song_tokens

  # setter for adding songs to playlist
  def song_tokens=(tokens)
    self.song_ids = [1,2] #tokens.split(',').to_i #Song.ids_from_tokens(tokens)
  end


end
