class AddPageController < ApplicationController
  def addSingleSong
  	@song_new = Song.new
  	@song = params[:songEntry]
  	respond_to do |format|
      format.html
    
     end
  	# if param[:entry]
  	# 	entry = param[:entry]
  	# 	addSingleSongByentry(entry)
  	# elsif param[:id]
  	# 	rid = param[:id]
  	# 	addSingleSongById(rid)
  	# else
  	# 	#error
  	# end


  end

  def addListSongs
    @songs_list = session[:songs_list][:list]
    @artist = session[:songs_list][:artist]
    @title = session[:songs_list][:title]
    @new_songs_array = Array.new(@songs_list.size)
    (0..(@songs_list.size-1)).each do |i|
        @new_songs_array[i] = Song.new
    end
    (0..(@songs_list.size-1)).each do |i|
       if @new_songs_array[i].save
          format.html
        end

    end
  
   
  end

#:title, :artist, :album, :duration, :fccClean, :is_qDrive, presence: truet.string   "title"
# t.string   "artist"
# t.string   "album"
# t.time     "duration"
# t.integer  "quality"
# t.boolean  "fccClean"
# t.boolean  "is_qDrive"
# t.string   "location"
# t.string   "format"
# t.text     "review"

 #  def addSingleSongByentry(entry)
 #  	title = entry["title"]
	# artist = 
 #  end

 #  def addSingleSongById(rid)
  	
 #  end

 #  def addSingleSongByAttr(title, artist, album, duration, fccClean, is_qDrive)

  
end
