class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
        @artist = @song.artist
        @genre = @song.genre
    end

    def new
        @song = Song.new
    end

    def create
        params[:song][:artist_id].to_i
        params[:song][:genre_id].to_i
        song = Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))
        redirect_to song_path(song)
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        params[:song][:artist_id].to_i
        params[:song][:genre_id].to_i
        @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end
end
