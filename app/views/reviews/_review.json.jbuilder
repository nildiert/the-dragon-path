json.extract! review, :id, :task_id, :status, :created_at, :updated_at
json.url review_url(review, format: :json)
