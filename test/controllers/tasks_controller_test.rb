require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get _logged_in" do
    get tasks__logged_in_url
    assert_response :success
  end
end
