require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get root_url
    assert_response :redirect
    assert_redirected_to new_user_session_url
  end
end
