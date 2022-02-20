# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_02_20_021636) do
  create_table "base_courses", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "base_videos", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.integer "order"
    t.integer "base_course_id", null: false
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["base_course_id"], name: "index_base_videos_on_base_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "base_course_id", null: false
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["base_course_id"], name: "index_courses_on_base_course_id"
    t.index ["user_id"], name: "index_courses_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.integer "base_course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["base_course_id"], name: "index_resources_on_base_course_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "user_id", null: false
    t.string "link_github"
    t.string "url"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_tasks_on_course_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "base_video_id", null: false
    t.integer "course_id", null: false
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["base_video_id"], name: "index_videos_on_base_video_id"
    t.index ["course_id"], name: "index_videos_on_course_id"
    t.index ["user_id"], name: "index_videos_on_user_id"
  end

  add_foreign_key "base_videos", "base_courses"
  add_foreign_key "courses", "base_courses"
  add_foreign_key "courses", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "resources", "base_courses"
  add_foreign_key "tasks", "courses"
  add_foreign_key "tasks", "users"
  add_foreign_key "videos", "base_videos"
  add_foreign_key "videos", "courses"
  add_foreign_key "videos", "users"
end
