require "application_system_test_case"

class VideoPerUsersTest < ApplicationSystemTestCase
  setup do
    @video_per_user = video_per_users(:one)
  end

  test "visiting the index" do
    visit video_per_users_url
    assert_selector "h1", text: "Video per users"
  end

  test "should create video per user" do
    visit video_per_users_url
    click_on "New video per user"

    fill_in "Status", with: @video_per_user.status
    fill_in "User", with: @video_per_user.user_id
    fill_in "Video", with: @video_per_user.video_id
    click_on "Create Video per user"

    assert_text "Video per user was successfully created"
    click_on "Back"
  end

  test "should update Video per user" do
    visit video_per_user_url(@video_per_user)
    click_on "Edit this video per user", match: :first

    fill_in "Status", with: @video_per_user.status
    fill_in "User", with: @video_per_user.user_id
    fill_in "Video", with: @video_per_user.video_id
    click_on "Update Video per user"

    assert_text "Video per user was successfully updated"
    click_on "Back"
  end

  test "should destroy Video per user" do
    visit video_per_user_url(@video_per_user)
    click_on "Destroy this video per user", match: :first

    assert_text "Video per user was successfully destroyed"
  end
end
