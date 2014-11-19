require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  setup do
    @shemp = FactoryGirl.create(:user)
  end

  context "when logged in as an admin" do
    
    setup do
      @user = FactoryGirl.create(:user, admin: true)
    end

    should "get index" do
      get(:index, nil, {'user_id' => @user.id})
      assert_response :success
      assert_not_nil assigns(:users)
    end

    should "get edit" do
      get(:edit, {:id => @shemp.id}, {'user_id' => @user.id})
      assert_response :success
    end

    should "update user" do
      put(:update, {:id => @shemp.id, :user => @shemp.attributes}, {'user_id' => @user.id})
      assert_redirected_to users_path
    end

    should "delete user" do
      delete :destroy, {:id => @shemp.id}, {'user_id' => @user.id}
      assert_redirected_to users_path
    end

  end

  context "when logged in as a non-admin" do
    
    setup do
      @user = FactoryGirl.create(:user)
    end

    should "not get index" do
      get(:index, nil, {'user_id' => @user.id})
      assert_redirected_to root_url
    end

    should "not get edit" do
      get(:edit, {:id => @shemp.id}, {'user_id' => @user.id})
      assert_redirected_to root_url
    end

    should "not update user" do
      put(:update, {:id => @shemp.id, :user => @shemp.attributes}, {'user_id' => @user.id})
      assert_redirected_to root_url
    end
    
    should "not delete user" do
      delete :destroy, {:id => @shemp.id}, {'user_id' => @user.id}
      assert_redirected_to root_url
    end

  end
  
  context "when not logged in" do
    
    should "not get index" do
      get :index
      assert_redirected_to root_url
    end

    should "not get edit" do
      get :edit, {:id => @shemp.id}
      assert_redirected_to root_url
    end

    should "not update user" do
      put :update, id: @shemp.id, user: @shemp.attributes
      assert_redirected_to root_url
    end
    
    should "not delete user" do
      delete :destroy, {:id => @shemp.id}
      assert_redirected_to root_url
    end

  end

end
