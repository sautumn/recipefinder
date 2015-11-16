require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get recipe" do
    get :recipe
    assert_response :success
  end

end
