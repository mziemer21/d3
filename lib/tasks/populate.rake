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
      song.duration = 50
      song.quality = 192
      song.fccFlag = 1
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
        #plist.songs.first.fccFlag = 0
        #plist.songs.first.save!
        plist.songs.first.update_attribute(:fccFlag, false)
      end

      plist.save!
      i += 1
    end


  end #task
end
