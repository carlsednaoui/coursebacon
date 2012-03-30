require 'test_helper'

class BookReviewsControllerTest < ActionController::TestCase
  setup do
    @book_review = book_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_review" do
    assert_difference('BookReview.count') do
      post :create, :book_review => @book_review.attributes
    end

    assert_redirected_to book_review_path(assigns(:book_review))
  end

  test "should show book_review" do
    get :show, :id => @book_review.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @book_review.to_param
    assert_response :success
  end

  test "should update book_review" do
    put :update, :id => @book_review.to_param, :book_review => @book_review.attributes
    assert_redirected_to book_review_path(assigns(:book_review))
  end

  test "should destroy book_review" do
    assert_difference('BookReview.count', -1) do
      delete :destroy, :id => @book_review.to_param
    end

    assert_redirected_to book_reviews_path
  end
end
