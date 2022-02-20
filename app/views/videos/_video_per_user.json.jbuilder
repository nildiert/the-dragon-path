json.extract! video_per_user, :id, :user_id, :video_id, :status, :created_at, :updated_at
json.url video_per_user_url(video_per_user, format: :json)
