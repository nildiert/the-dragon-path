class Task < ApplicationRecord

  after_update :create_review

  belongs_to :base_task
  belongs_to :course
  belongs_to :user
  has_one :review



  def create_review
    review = Review.where(task: self).first
    if review
      review.update(status: :in_review)
    else
      Review.create(task: self, status: :in_review)
    end
  end

end