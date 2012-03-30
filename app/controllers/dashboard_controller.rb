class DashboardController < ApplicationController
	before_filter :require_current_user
  	def index
		@current_user_courses = Course.find_all_by_user_id(current_user.id).reverse
		@current_user_tutorials = Tutorial.find_all_by_user_id(current_user.id).reverse
		@current_user_books = Book.find_all_by_user_id(current_user.id).reverse
		@current_user_course_reviews = CourseReview.find_all_by_user_id(current_user.id).reverse
		@current_user_tutorial_reviews = TutorialReview.find_all_by_user_id(current_user.id).reverse
		@current_user_book_reviews = BookReview.find_all_by_user_id(current_user.id).reverse
	end
end
