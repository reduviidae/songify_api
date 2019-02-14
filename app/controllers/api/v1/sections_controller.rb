class Api::V1::SectionsController < ApplicationController
  def index
    @sections = Section.all
    render :json => @sections, each_serializer: SectionSerializer
  end

  def create
    @section = Section.create(section_params)
    p @section.errors
    render :json => @section, each_serializer: SectionSerializer
  end

  def show
    @section = Section.find(params[:id])
    render :json => @section, each_serializer: SectionSerializer
  end

  private
  def section_params
      params.require(:section).permit(:song_id, :section_type)
  end

end
