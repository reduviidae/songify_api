class Api::V1::SectionsController < ApplicationController
  def index
    @sections = Section.all
    render json: @sections
  end
end
