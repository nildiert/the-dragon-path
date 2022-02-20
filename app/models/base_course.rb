class BaseCourse < ApplicationRecord
  has_many :base_videos
  has_many :tasks
  has_many :resources
end