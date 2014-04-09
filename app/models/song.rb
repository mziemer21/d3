class Song < ActiveRecord::Base

  validates :title, :artist, :album, :duration, :fccClean, :is_qDrive, presence: true
  
end
