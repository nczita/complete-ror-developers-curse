require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'should get my_portfolio' do
    get my_portfolio_url
    assert_response :redirect
    assert_redirected_to new_user_session_url
  end
end
