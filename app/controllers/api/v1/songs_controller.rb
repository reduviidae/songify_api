class Api::V1::SongsController < ApplicationController
  def index
    @songs = Song.all
    render :json => @songs, each_serializer: SongSerializer
  end

  def create
    @song = Song.create(song_params)
    render :json => @song, each_serializer: SongSerializer
  end

  def show
    @song = Song.find(params[:id])
    render :json => @song, each_serializer: SongSerializer
  end

  private
  def song_params
      params.require(:song).permit(:title, :id, :likes, :complete)
  end

end
