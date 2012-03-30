require 'test_helper'

class TutorialReviewsControllerTest < ActionController::TestCase
  setup do
    @tutorial_review = tutorial_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tutorial_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tutorial_review" do
    assert_difference('TutorialReview.count') do
      post :create, :tutorial_review => @tutorial_review.attributes
    end

    assert_redirected_to tutorial_review_path(assigns(:tutorial_review))
  end

  test "should show tutorial_review" do
    get :show, :id => @tutorial_review.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tutorial_review.to_param
    assert_response :success
  end

  test "should update tutorial_review" do
    put :update, :id => @tutorial_review.to_param, :tutorial_review => @tutorial_review.attributes
    assert_redirected_to tutorial_review_path(assigns(:tutorial_review))
  end

  test "should destroy tutorial_review" do
    assert_difference('TutorialReview.count', -1) do
      delete :destroy, :id => @tutorial_review.to_param
    end

    assert_redirected_to tutorial_reviews_path
  end
end
