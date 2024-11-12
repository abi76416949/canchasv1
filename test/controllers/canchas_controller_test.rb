require "test_helper"

class CanchasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get canchas_index_url
    assert_response :success
  end

  test "should get show" do
    get canchas_show_url
    assert_response :success
  end
end
