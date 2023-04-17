class AddImageUrlToTvShows < ActiveRecord::Migration[7.0]
  def change
    add_column :tv_shows, :image_url, :string
  end
end
