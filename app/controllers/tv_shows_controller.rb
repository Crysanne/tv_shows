class TvShowsController < ApplicationController

  def index
    @tv_shows = TvShow.all
    if params[:title].present?
      @tv_shows = @tv_shows.where("title ILIKE ?", "%#{params[:title]}%")
    end
    if params[:year].present?
      @tv_shows = @tv_shows.where("year = ?", "#{params[:year]}")
    end
    if params[:genre].present?
      @tv_shows = @tv_show_params.where("genre ILIKE ?", "%#{params[:genre]}%")
    end
  end

  def show
    @tv_show = TvShow.find(params[:id])
    @review = Review.new
  end

  # GET /tv_shows/new
  def new
    @tv_show = Tvshow.new
  end
  # GET /tv_shows/1/edit
  def edit
    @tv_show = TvShow.new
  end
  # POST /tv_shows or /tv_shows.json

  def create
    @tv_show = TvShow.new(params[:tv_show])
    tv_show.save
    redirect_to tv_show_path(@tv_show)
  end

  private

  def tv_show_params
    params.require(:tv_show).permit(:title, :photo, :year, :genre, :synopsis)
  end
end
