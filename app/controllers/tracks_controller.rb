class TracksController < ApplicationController

  def index
    @tracks = Track.all
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.create(track_params)

    if @track.save
      redirect_to tracks_path
    else
      render :new
    end
  end

  protected

  def track_params
    params.require(:track).permit(:title, :artist, :url)
  end

end
