require 'test_helper'

class WoolyBillyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wooly_billy_index_url
    assert_response :success
  end

end
