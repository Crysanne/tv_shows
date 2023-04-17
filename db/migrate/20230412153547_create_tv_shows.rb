class CreateTvShows < ActiveRecord::Migration[7.0]
  def change
    create_table :tv_shows do |t|
      t.string :title
      t.integer :year
      t.string :genre
      t.text :synopsis
      t.text :review
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
