class Task < ApplicationRecord
  belongs_to :base_task
  belongs_to :user
end