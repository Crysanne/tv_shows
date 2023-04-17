class ReviewsController < ApplicationController
  def create
    @tv_show = TvShow.find(params[:tv_show_id])
    @review = Review.new(review_params)
    @review.tv_show = @tv_show
    respond_to do |format|
      if @review.save
        format.html { redirect_to tv_show_path(@tv_show) }
        format.json
      else
        format.html { render "tv_shows/show", status: :unprocessable_entity }
        format.json
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end
