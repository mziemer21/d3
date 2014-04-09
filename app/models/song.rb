class Song < ActiveRecord::Base
  has_many :playlist_songs
  #fccFlag will become fccClean, so it will default to true, or clean
  validates :title, :artist, :album, :duration, :fccClean, :is_qDrive, presence: true
  
end
