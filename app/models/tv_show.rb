class TvShow < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :reviews, dependent: :destroy
  attribute :image_url, :string
  attribute :director, :string
end
