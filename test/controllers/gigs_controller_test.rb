require 'test_helper'

class GigsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gigs_index_url
    assert_response :success
  end

  test "should get show" do
    get gigs_show_url
    assert_response :success
  end

  test "should get create" do
    get gigs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get gigs_destroy_url
    assert_response :success
  end

end
