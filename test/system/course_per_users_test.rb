require "application_system_test_case"

class CoursePerUsersTest < ApplicationSystemTestCase
  setup do
    @course_per_user = course_per_users(:one)
  end

  test "visiting the index" do
    visit course_per_users_url
    assert_selector "h1", text: "Course per users"
  end

  test "should create course per user" do
    visit course_per_users_url
    click_on "New course per user"

    fill_in "Course", with: @course_per_user.course_id
    fill_in "Status", with: @course_per_user.status
    fill_in "User", with: @course_per_user.user_id
    click_on "Create Course per user"

    assert_text "Course per user was successfully created"
    click_on "Back"
  end

  test "should update Course per user" do
    visit course_per_user_url(@course_per_user)
    click_on "Edit this course per user", match: :first

    fill_in "Course", with: @course_per_user.course_id
    fill_in "Status", with: @course_per_user.status
    fill_in "User", with: @course_per_user.user_id
    click_on "Update Course per user"

    assert_text "Course per user was successfully updated"
    click_on "Back"
  end

  test "should destroy Course per user" do
    visit course_per_user_url(@course_per_user)
    click_on "Destroy this course per user", match: :first

    assert_text "Course per user was successfully destroyed"
  end
end
