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

  def handle_upvote
    @track = Track.find(params[:track_id])

    @track.increment!(:votes)
    redirect_to tracks_path

  end

  private

  def track_params
    params.require(:track).permit(:title, :artist, :url)
  end

end
