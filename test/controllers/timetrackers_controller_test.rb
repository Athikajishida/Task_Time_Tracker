require "test_helper"

class TimetrackersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get timetrackers_create_url
    assert_response :success
  end

  test "should get update" do
    get timetrackers_update_url
    assert_response :success
  end
end
