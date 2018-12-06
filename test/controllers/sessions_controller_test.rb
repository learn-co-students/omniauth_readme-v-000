require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get creae" do
    get :creae
    assert_response :success
  end

  test "should get auth" do
    get :auth
    assert_response :success
  end

end
