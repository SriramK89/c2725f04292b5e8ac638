class ShowsController < ApplicationController
  def index
    @tv_shows = TelevisionShow.includes(:show, :channel).select(:channel, :show, :time_from, :time_to, :airs_on, :repeats_on)
  end
end
