class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  after_create :create_courses

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:user, :moderator, :admin]
  after_initialize :set_default_role, :if => :new_record?

  has_many :courses
  has_many :videos
  has_one :profile


  def set_default_role
    self.role ||= :user
  end

  def create_courses
    BaseCourse.all.each do |course|
      Course.create(user: self, base_course: course)
    end
  end


end
