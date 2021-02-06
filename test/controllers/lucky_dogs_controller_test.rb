require 'test_helper'

class LuckyDogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lucky_dogs_index_url
    assert_response :success
  end

end
