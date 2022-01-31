require 'test_helper'

class NftsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get nfts_new_url
    assert_response :success
  end

  test "should get create" do
    get nfts_create_url
    assert_response :success
  end

  test "should get index" do
    get nfts_index_url
    assert_response :success
  end

  test "should get show" do
    get nfts_show_url
    assert_response :success
  end

  test "should get edit" do
    get nfts_edit_url
    assert_response :success
  end

  test "should get update" do
    get nfts_update_url
    assert_response :success
  end

  test "should get delete" do
    get nfts_delete_url
    assert_response :success
  end

end
