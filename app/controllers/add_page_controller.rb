class AddPageController < ApplicationController
  def addSingleSong
  	@song_new = Song.new
  	@song = params[:songEntry]
  end

  def addListSongs
    @songs_list = session[:songs_list][:list]
    @artist = session[:songs_list][:artist]
    @title = session[:songs_list][:title]
    new_songs_array = Array.new(@songs_list.size)
    (0..(@songs_list.size - 1)).each do |i|
        @new_songs_array[i] = Song.new
    end


  end
  

  respond_to :html, :json
  def addAlbum
    @songs_list = session[:songs_list][:list]
    @artist = session[:songs_list][:artist]
    @title = session[:songs_list][:title]
    @new_songs_array = Array.new
    count = 0
    @songs_list.each do |song|
      @thisSong = Song.new( title: song["title"], 
        artist: @artist, album: @title, duration: Song.get_time_str(song['length']/1000), quality: "0",
        fccFlag: false, is_qDrive: false, location: "N/A", format: "N/A", review: "")

        @new_songs_array[count] = @thisSong
        @new_songs_array[count].save
      
      count+=1

    end
    #@new_songs_array = @new_songs_array.uniq
    respond_with @new_songs_array

  end
end
