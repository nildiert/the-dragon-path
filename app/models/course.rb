class Course < ApplicationRecord

  after_create :create_videos
  belongs_to :user
  belongs_to :base_course

  has_many :videos

  private
  def create_videos
    videos = []
    self.base_course.base_videos.order(:order).each do |video|

      video_created = Video.create(base_video: video, user: user, course: self, status: :unfinished)
      videos.append(video_created)
      videos.first.update(status: :current)
    end
  end

  def order_videos
    binding.break
  end


end
