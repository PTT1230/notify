require 'test_helper'

class OmniauthCallbacksrailsControllerTest < ActionDispatch::IntegrationTest
  test "should get db:migrate" do
    get omniauth_callbacksrails_db:migrate_url
    assert_response :success
  end

end
