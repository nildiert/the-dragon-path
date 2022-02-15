class CoursePerUser < ApplicationRecord

  after_create :create_videos
  belongs_to :user
  belongs_to :course

  has_many :video_per_users

  private
  def create_videos
    videos = []
    self.course.videos.order(:order).each do |video|
      video_created = VideoPerUser.create(video: video, user: user, course_per_user: self, status: :unfinished)
      videos.append(video_created)
      videos.first.update(status: :current)
    end
  end
end
