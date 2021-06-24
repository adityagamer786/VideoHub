class Video < ApplicationRecord
  acts_as_votable
  has_one_attached :clip
  has_one_attached :thumbnail
  belongs_to :user
end
