require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  setup do
    @contact = FactoryGirl.build(:contact)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should send contact email" do
    post :create, contact: {name: 'Shemp', email: 'test@example.com', content: 'this is a message'}
    mail = ActionMailer::Base.deliveries.last
    assert_equal 'Shemp <test@example.com>', mail['from'].to_s
  end

end
