require "test_helper"

class InsecureUserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get insecure_user_index_url
    assert_response :success
  end
end
