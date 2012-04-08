class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
  before_filter :get_stats

 private

 def get_stats
	@course_num = Course.count
	@tutorial_num = Tutorial.count
	@book_num = Book.count
	@tweet_num = Tweet.count
 end

  def current_user
	    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_current_user
	  unless current_user
		  flash[:error] = "You must be logged in"
		  redirect_to "/sign-up"
	  end
  end
end
