require 'test_helper'

class EmailAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @email_address = email_addresses(:one)
  end

  test "should get index" do
    get email_addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_email_address_url
    assert_response :success
  end

  test "should create email_address" do
    assert_difference('EmailAddress.count') do
      post email_addresses_url, params: { email_address: {  } }
    end

    assert_redirected_to email_address_url(EmailAddress.last)
  end

  test "should show email_address" do
    get email_address_url(@email_address)
    assert_response :success
  end

  test "should get edit" do
    get edit_email_address_url(@email_address)
    assert_response :success
  end

  test "should update email_address" do
    patch email_address_url(@email_address), params: { email_address: {  } }
    assert_redirected_to email_address_url(@email_address)
  end

  test "should destroy email_address" do
    assert_difference('EmailAddress.count', -1) do
      delete email_address_url(@email_address)
    end

    assert_redirected_to email_addresses_url
  end
end
