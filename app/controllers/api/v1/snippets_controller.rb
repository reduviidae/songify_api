class Api::V1::SnippetsController < ApplicationController
  def index
    @snippets = Snippet.all
    render :json => @snippets, each_serializer: SnippetSerializer
  end

  def create
    @snippet = Snippet.create(snippet_params)
    render :json => @snippet, each_serializer: SnippetSerializer
  end

  def show
    @snippet = Snippet.find(params[:id])
    render :json => @snippet, each_serializer: SnippetSerializer
  end

  private
  def snippet_params
      params.require(:snippet).permit(:id, :section_id, :content)
  end

end
