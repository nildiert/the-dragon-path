class VideoPerUser < ApplicationRecord
  belongs_to :user
  belongs_to :video
  belongs_to :course_per_user

  enum status: [:unfinished, :current, :finished]
end
