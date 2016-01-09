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

    respond_to do |format|
      format.html {redirect_to tracks_path}
      format.json {head :no_content}
      format.js {render layout: false}
    end

  end

  private

  def track_params
    params.require(:track).permit(:title, :artist, :url)
  end

end
