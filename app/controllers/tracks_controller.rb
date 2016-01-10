class TracksController < ApplicationController

  helper_method :user_voted

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

  def user_voted(track)
    track.votes.find_by user_id: current_user.id
  end

  private

  def track_params
    params.require(:track).permit(:title, :artist, :url).merge(user_id: current_user.id)
  end

end
