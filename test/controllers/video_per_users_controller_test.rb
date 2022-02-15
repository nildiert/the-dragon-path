require "test_helper"

class VideoPerUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_per_user = video_per_users(:one)
  end

  test "should get index" do
    get video_per_users_url
    assert_response :success
  end

  test "should get new" do
    get new_video_per_user_url
    assert_response :success
  end

  test "should create video_per_user" do
    assert_difference("VideoPerUser.count") do
      post video_per_users_url, params: { video_per_user: { status: @video_per_user.status, user_id: @video_per_user.user_id, video_id: @video_per_user.video_id } }
    end

    assert_redirected_to video_per_user_url(VideoPerUser.last)
  end

  test "should show video_per_user" do
    get video_per_user_url(@video_per_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_per_user_url(@video_per_user)
    assert_response :success
  end

  test "should update video_per_user" do
    patch video_per_user_url(@video_per_user), params: { video_per_user: { status: @video_per_user.status, user_id: @video_per_user.user_id, video_id: @video_per_user.video_id } }
    assert_redirected_to video_per_user_url(@video_per_user)
  end

  test "should destroy video_per_user" do
    assert_difference("VideoPerUser.count", -1) do
      delete video_per_user_url(@video_per_user)
    end

    assert_redirected_to video_per_users_url
  end
end
