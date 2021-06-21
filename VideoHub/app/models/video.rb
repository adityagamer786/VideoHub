class Video < ApplicationRecord
  has_one_attached :clip
  has_one_attached :thumbnail
  has_many :likes, dependent: :destroy

  def likes_count
    likes.count
  end
end
