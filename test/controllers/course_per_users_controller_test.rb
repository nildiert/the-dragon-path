require "test_helper"

class CoursePerUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_per_user = course_per_users(:one)
  end

  test "should get index" do
    get course_per_users_url
    assert_response :success
  end

  test "should get new" do
    get new_course_per_user_url
    assert_response :success
  end

  test "should create course_per_user" do
    assert_difference("CoursePerUser.count") do
      post course_per_users_url, params: { course_per_user: { course_id: @course_per_user.course_id, status: @course_per_user.status, user_id: @course_per_user.user_id } }
    end

    assert_redirected_to course_per_user_url(CoursePerUser.last)
  end

  test "should show course_per_user" do
    get course_per_user_url(@course_per_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_per_user_url(@course_per_user)
    assert_response :success
  end

  test "should update course_per_user" do
    patch course_per_user_url(@course_per_user), params: { course_per_user: { course_id: @course_per_user.course_id, status: @course_per_user.status, user_id: @course_per_user.user_id } }
    assert_redirected_to course_per_user_url(@course_per_user)
  end

  test "should destroy course_per_user" do
    assert_difference("CoursePerUser.count", -1) do
      delete course_per_user_url(@course_per_user)
    end

    assert_redirected_to course_per_users_url
  end
end
