json.extract! course_per_user, :id, :user_id, :course_id, :status, :created_at, :updated_at
json.url course_per_user_url(course_per_user, format: :json)
