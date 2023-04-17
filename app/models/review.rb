class Review < ApplicationRecord
  belongs_to :tv_show
  validates :content, length: {minimum: 20}
end
