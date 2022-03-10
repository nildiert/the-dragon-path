class Review < ApplicationRecord
  belongs_to :task

  enum status: [:in_review, :reviewed]
end
