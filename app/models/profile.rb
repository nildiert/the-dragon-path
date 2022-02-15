class Profile < ApplicationRecord
  after_create :create_first_course


  belongs_to :user

  def create_first_course
    user = self.user
    first_course = Course.first
    CoursePerUser.create(user: user, course: first_course)
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
