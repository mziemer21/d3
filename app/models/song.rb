class Song < ActiveRecord::Base
  has_and_belongs_to_many :playlists, :join_table => "playlists_songs"
  validates :title, :artist, :album, :duration, :fccFlag, :is_qDrive, presence: true
  
  # songs table query used in playlist view
  def self.tokens(query)

  	# make the query on title field
    songs = where("title like ?", "%#{query}%")
    ## option to add new song if not found -- excluded
    # if songs.empty?
    # [{id: "<<<#{query}>>>", title: "New: \"#{query}\""}]
    
    ## return results
      songs
    #end
  end
  
  # used for getting ids of tokens in text area
  def self.ids_from_tokens(tokens)
    ## used for creating a new song if search is empty -- excluded
    tokens.gsub!(/<<<(.+?)>>>/) { create!(title: $1).id }
    tokens.split(',')
  end


  def fccClean
    self.fccFlag
  end

end
