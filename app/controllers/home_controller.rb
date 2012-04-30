class HomeController < ApplicationController
  def sign_up
  end

  def index
  end

  def stats
    @users = User.all
    @indentity_users = User.find_all_by_provider("identity").count
    @twitter_users = User.find_all_by_provider("twitter").count
    @facebook_users = User.find_all_by_provider("facebook").count
    @last_created = User.last.created_at
  end

  def sitemap
	  @courses = Course.all
	  @tutorials = Tutorial.all
	  @books = Book.all
  end

end
