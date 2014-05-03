namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    
    Song.delete_all    
    Playlist.delete_all
    
    me = User.first

    Song.populate 5 do |song|
      song.title   = Faker::Company.name
      song.artist  = Faker::Name.name
      song.album   = Faker::Commerce.department
      song.duration = '4:33'
      song.quality = 192
      song.fccClean = 0
      song.is_qDrive = 0
      song.location = 'digital'
      song.review = 'A good song'
    end

  
    Playlist.populate 3 do |plist|
      plist.user_id = me.id
    end

    i = 1

    for plist in me.playlists
      plist.title = "My Playlist #{i}"
      plist.songs = Song.all

      if (i.even?)
        plist.songs.first.fccClean = 0
      end

      plist.save!
      i += 1
    end


  end #task
end
