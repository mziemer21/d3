class CreatePlaylistsSongsJoin < ActiveRecord::Migration
  def change
    create_table :playlists_songs, :id => false do |t|
    	t.integer :playlist_id
    	t.integer :song_id
    end
    add_index :playlists_songs, ["playlist_id", "song_id"]
  end
end
