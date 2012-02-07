require 'test_helper'

class ServicesControllerTest < ActionController::TestCase
  
  should "get index" do
    get :index
    assert_response :success
  end
  
  should "get vaccinations" do
    get :vaccinations
    assert_response :success
  end
  
  should "get pricing" do
    get :pricing
    assert_response :success
  end
  
  should "get mobile" do
    get :mobile
    assert_response :success
  end
  
end
