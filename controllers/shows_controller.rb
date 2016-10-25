class ShowsController < ApplicationController
  def index
    shows = Show.all
    render :json => shows
  end
  def create
    new_show = Show.create(
      params.require(:show).permit([:title, :series, :description, :image, :programmeID]))
    render :json => new_show
  end
end
