class BaseCourse < ApplicationRecord
  has_many :base_videos
  belongs_to :base_task
  has_many :resources
end