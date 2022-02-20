class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  after_create :create_first_course

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

  def create_first_course
    first_course = BaseCourse.first
    Course.create(user: self, base_course: first_course)
  end


end
