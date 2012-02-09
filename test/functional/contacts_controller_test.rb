require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  setup do
    @contact = Factory.build(:contact)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact" do
    post :create, contact: @contact.attributes
    assert_response :success
  end

end
