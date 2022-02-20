json.extract! resource, :id, :title, :url, :base_course_id, :created_at, :updated_at
json.url resource_url(resource, format: :json)
