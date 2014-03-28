class Song < ActiveRecord::Base
  #fccFlag will become fccClean, so it will default to true, or clean
  validates :title, :artist, :album, :duration, :fccFlag, :is_qDrive, presence: true
end
