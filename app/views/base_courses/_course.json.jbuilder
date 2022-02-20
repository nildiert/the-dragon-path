json.extract! course, :id, :title, :description, :order, :next_id, :created_at, :updated_at
json.url course_url(course, format: :json)
