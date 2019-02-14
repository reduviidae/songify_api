class Api::V1::SnippetsController < ApplicationController
  def index
    @snippets = Snippet.all
    render json: @snippets
  end

  def create
  @snippet = Snippet.create(snippet_params)
  end

  def show
    @snippet = Snippet.find(params[:id])
    render json: @snippet
  end

  private
  def snippet_params
      params.require(:snippet).permit(:title, :id, :likes, :complete)
  end

end
