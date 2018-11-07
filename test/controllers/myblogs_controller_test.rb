require 'test_helper'

class MyblogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myblog = myblogs(:one)
  end

  test "should get index" do
    get myblogs_url
    assert_response :success
  end

  test "should get new" do
    get new_myblog_url
    assert_response :success
  end

  test "should create myblog" do
    assert_difference('Myblog.count') do
      post myblogs_url, params: { myblog: { content: @myblog.content, title: @myblog.title } }
    end

    assert_redirected_to myblog_url(Myblog.last)
  end

  test "should show myblog" do
    get myblog_url(@myblog)
    assert_response :success
  end

  test "should get edit" do
    get edit_myblog_url(@myblog)
    assert_response :success
  end

  test "should update myblog" do
    patch myblog_url(@myblog), params: { myblog: { content: @myblog.content, title: @myblog.title } }
    assert_redirected_to myblog_url(@myblog)
  end

  test "should destroy myblog" do
    assert_difference('Myblog.count', -1) do
      delete myblog_url(@myblog)
    end

    assert_redirected_to myblogs_url
  end
end
