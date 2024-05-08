require "test_helper"

class PastInputsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get past_inputs_index_url
    assert_response :success
  end
end
