class Like < ApplicationRecord
  belongs_to :video
  belongs_to :user

  validates :video, uniqueness: { scope: :user }
  validates :user, uniqueness: { scope: :video}
end
