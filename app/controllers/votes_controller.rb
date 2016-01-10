class VotesController < ApplicationController

  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.create(vote_params)

    if @vote.save
      render nothing: true
    else
      render :new
    end
  end

  private

  def vote_params
    params.permit(:track_id).merge(user_id: current_user.id)
  end

end
