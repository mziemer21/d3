namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    
    Song.delete_all    
    #Playlist.delete_all
    
    me = User.first

    Song.populate 5 do |song|
      song.title   = Faker::Company.name
      song.artist  = Faker::Name.name
      song.album   = Faker::Commerce.department
      song.duration = '4:33'
      song.quality = 192
      song.fccFlag = 1
      song.is_qDrive = 0
      song.location = 'digital'
      song.review = nil
    end

    #Playlist.populate 3 do |plist|
      #plist.user = me.id
      #plist.song = Song.all
      
      #Song.all.each do |song|
      #  plist.add(song.id)
      #end


      #plist.user << User.first

      #plist.songs << Song.all
          
    #end

  end
end
