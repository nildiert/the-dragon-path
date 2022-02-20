require "test_helper"

class BaseTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @base_task = base_tasks(:one)
  end

  test "should get index" do
    get base_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_base_task_url
    assert_response :success
  end

  test "should create base_task" do
    assert_difference("BaseTask.count") do
      post base_tasks_url, params: { base_task: { base_course_id: @base_task.base_course_id, description: @base_task.description, task_url: @base_task.task_url, title: @base_task.title } }
    end

    assert_redirected_to base_task_url(BaseTask.last)
  end

  test "should show base_task" do
    get base_task_url(@base_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_base_task_url(@base_task)
    assert_response :success
  end

  test "should update base_task" do
    patch base_task_url(@base_task), params: { base_task: { base_course_id: @base_task.base_course_id, description: @base_task.description, task_url: @base_task.task_url, title: @base_task.title } }
    assert_redirected_to base_task_url(@base_task)
  end

  test "should destroy base_task" do
    assert_difference("BaseTask.count", -1) do
      delete base_task_url(@base_task)
    end

    assert_redirected_to base_tasks_url
  end
end
