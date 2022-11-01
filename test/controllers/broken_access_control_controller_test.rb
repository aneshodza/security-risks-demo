require "test_helper"

class BrokenAccessControlControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get broken_access_control_index_url
    assert_response :success
  end
end
