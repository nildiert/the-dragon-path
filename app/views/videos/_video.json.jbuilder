json.extract! video, :id, :title, :url, :order, :course_id, :next_id, :status, :created_at, :updated_at
json.url video_url(video, format: :json)
