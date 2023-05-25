require "test_helper"

class ReferralEmailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get referral_emails_index_url
    assert_response :success
  end

  test "should get create" do
    get referral_emails_create_url
    assert_response :success
  end
end
