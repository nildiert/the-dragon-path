json.extract! base_task, :id, :title, :description, :task_url, :base_course_id, :created_at, :updated_at
json.url base_task_url(base_task, format: :json)
