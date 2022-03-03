class Course < ApplicationRecord

  after_create :create_tasks_and_videos
  belongs_to :user
  belongs_to :base_course

  has_many :videos
  has_many :tasks

  enum status: [:unfinished, :current, :finished]

  private

  def create_tasks_and_videos
    create_videos
    create_tasks
  end

  def create_videos
    videos = []
    self.base_course.base_videos.order(:order).each do |video|
      video_created = Video.create(base_video: video, user: user, course: self, status: :unfinished)
      videos.append(video_created)
      videos.first.update(status: :current)
    end
  end

  def create_tasks
    self.base_course.base_tasks.each do |task|
      Task.create!(base_task: task, user: user, course: self)
    end
  end

end
