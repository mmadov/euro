require 'test_helper'

class PagenamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pagename = pagenames(:one)
  end

  test "should get index" do
    get pagenames_url
    assert_response :success
  end

  test "should get new" do
    get new_pagename_url
    assert_response :success
  end

  test "should create pagename" do
    assert_difference('Pagename.count') do
      post pagenames_url, params: { pagename: { name: @pagename.name } }
    end

    assert_redirected_to pagename_url(Pagename.last)
  end

  test "should show pagename" do
    get pagename_url(@pagename)
    assert_response :success
  end

  test "should get edit" do
    get edit_pagename_url(@pagename)
    assert_response :success
  end

  test "should update pagename" do
    patch pagename_url(@pagename), params: { pagename: { name: @pagename.name } }
    assert_redirected_to pagename_url(@pagename)
  end

  test "should destroy pagename" do
    assert_difference('Pagename.count', -1) do
      delete pagename_url(@pagename)
    end

    assert_redirected_to pagenames_url
  end
end
