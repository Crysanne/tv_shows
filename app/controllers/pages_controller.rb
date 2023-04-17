class PagesController < ApplicationController
  def home
  end

  def index
    @tv_shows = TvShow.all
  end
end
