class BaseCourse < ApplicationRecord
  has_many :base_videos
  has_many :base_tasks, through: :tasks
  has_many :resources
end