require "application_system_test_case"

class BaseTasksTest < ApplicationSystemTestCase
  setup do
    @base_task = base_tasks(:one)
  end

  test "visiting the index" do
    visit base_tasks_url
    assert_selector "h1", text: "Base tasks"
  end

  test "should create base task" do
    visit base_tasks_url
    click_on "New base task"

    fill_in "Base course", with: @base_task.base_course_id
    fill_in "Description", with: @base_task.description
    fill_in "Task url", with: @base_task.task_url
    fill_in "Title", with: @base_task.title
    click_on "Create Base task"

    assert_text "Base task was successfully created"
    click_on "Back"
  end

  test "should update Base task" do
    visit base_task_url(@base_task)
    click_on "Edit this base task", match: :first

    fill_in "Base course", with: @base_task.base_course_id
    fill_in "Description", with: @base_task.description
    fill_in "Task url", with: @base_task.task_url
    fill_in "Title", with: @base_task.title
    click_on "Update Base task"

    assert_text "Base task was successfully updated"
    click_on "Back"
  end

  test "should destroy Base task" do
    visit base_task_url(@base_task)
    click_on "Destroy this base task", match: :first

    assert_text "Base task was successfully destroyed"
  end
end
