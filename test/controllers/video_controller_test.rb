require 'test_helper'

class VideoControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get video_show_url
    assert_response :success
  end

end
