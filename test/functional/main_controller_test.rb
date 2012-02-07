require 'test_helper'

class MainControllerTest < ActionController::TestCase

  should "get index" do
    get :index
    assert_response :success
  end

  should "get forms" do
    get :forms
    assert_response :success
  end

  should "get op_instructions" do
    get :op_instructions
    assert_response :success
  end

  should "get about" do
    get :about
    assert_response :success
  end

  should "get donate" do
    get :donate
    assert_response :success
  end

  should "get contact" do
    get :contact
    assert_response :success
  end

end
