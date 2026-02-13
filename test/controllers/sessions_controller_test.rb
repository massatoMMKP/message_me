require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "login" do
    get login_path
    assert_response :success
    post login_path, params: { session: { username: "4mW2y", password: "password" } }
  end
end
