class Api::V1::SongsController < ApplicationController
  def index
    @songs = Song.all
    render json: @songs
  end

  def create
  @song = Song.create(song_params)
  redirect_to `/api/v1/songs/${@song}`
  end

  def show
    @song = Song.find(params[:id])
  end

  private
  def song_params
      params.require(:song).permit(:title)
  end

end
