require 'test_helper'

class BlurbsControllerTest < ActionController::TestCase
  setup do
    @blurb = Factory.create(:blurb)
  end

  context "when logged in" do
    
    setup do
      @user = Factory.create(:user)
    end

    should "get index" do
      get(:index, nil, {'user_id' => @user.id})
      assert_response :success
      assert_not_nil assigns(:blurbs)
    end

    should "show blurb" do
      get(:show, {:id => @blurb.id}, {'user_id' => @user.id})
      assert_response :success
    end

    should "get edit" do
      get(:edit, {:id => @blurb.id}, {'user_id' => @user.id})
      assert_response :success
    end

    should "update blurb" do
      put(:update, {:id => @blurb.id, :blurb => @blurb.attributes}, {'user_id' => @user.id})
      assert_redirected_to blurb_path(assigns(:blurb))
    end

  end
  
  context "when not logged in" do
    
    should "not get index" do
      get :index
      assert_redirected_to root_url
    end

    should "not show blurb" do
      get :show, id: @blurb.id
      assert_redirected_to root_url
    end

    should "not get edit" do
      get :edit, id: @blurb.id
      assert_redirected_to root_url
    end

    should "not update blurb" do
      put :update, id: @blurb.id, blurb: @blurb.attributes
      assert_redirected_to root_url
    end
    
  end

end
