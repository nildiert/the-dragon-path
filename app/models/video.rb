class Video < ApplicationRecord
  belongs_to :user
  belongs_to :base_video
  belongs_to :course

  enum status: [:unfinished, :current, :finished]
end
