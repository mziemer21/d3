class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  # GET /songs
  # GET /songs.json
  def index
    @songs = Song.all

    respond_to do |format|
      format.html {
        @songs = Song.order(:title)
      }
      # json for all songs specified by query param q
      format.json { 
        render json: @songs.tokens(params[:q]) 
      }
    end
  end

  # GET /songs/1
  # GET /songs/1.json
  def show
  end

  # GET /songs/new
  def new
    @song = Song.new
  end

  # GET /songs/1/edit
  def edit
  end

  # POST /songs
  # POST /songs.json
  def create
    @song = Song.new(song_params)

    respond_to do |format|
      if @song.save
        format.html { redirect_to @song, notice: 'Song was successfully created.' }
        format.json { render action: 'show', status: :created, location: @song }
      else
        format.html { render action: 'new' }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /songs/1protect_from_forgery :except => [:update, :delete, :create]
  # PATCH/PUT /songs/1.json
  def update
      #@song = song.find(params[:id])
      if @song.update_attributes(song_params)
        flash[:success] = "Song updated"
        redirect_to @song
      else
        render 'edit'
      end
    end

  # DELETE /songs/1
  # DELETE /songs/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      params.require(:song).permit(:title, :artist, :album, :duration, :quality, :fccClean, :is_qDrive, :location, :format, :review, :playlists)
    end
end
