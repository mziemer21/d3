json.array!(@songs) do |song|
  json.extract! song, :title, :artist, :album, :duration, :quality, :fccClean, :is_qDrive, :location, :format, :review
  json.url song_url(song, format: :json)
end