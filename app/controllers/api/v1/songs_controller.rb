class Api::V1::SongsController < ApplicationController
  def index
    @songs = Song.all
    render json: @songs
  end

  def create
  @song = Song.create(song_params)
  end

  def show
    @song = Song.find(params[:id])
    render json: @song
  end

  private
  def song_params
      params.require(:song).permit(:title, :id, :likes, :complete)
  end

end
