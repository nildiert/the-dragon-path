json.extract! task, :id, :project_id, :user_id, :link_github, :url, :status, :created_at, :updated_at
json.url task_url(task, format: :json)
