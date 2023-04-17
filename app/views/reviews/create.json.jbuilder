if @review.persisted?
  json.my_form render(partial: "reviews/form", formats: :html, locals: {tv_show: @tv_show, review: Review.new})
  json.my_inserted_item render(partial: "tv_shows/review", formats: :html, locals: {review: @review})
else
  json.my_form render(partial: "reviews/form", formats: :html, locals: {tv_show: @tv_show, review: @review})
end
