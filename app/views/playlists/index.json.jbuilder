json.array!(@playlists) do |playlist|
  json.extract! playlist, :users, :title, :songs, :qDrive, :notes
  json.url playlist_url(playlist, format: :json)
end