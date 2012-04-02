class HomeController < ApplicationController
  def sign_up
  end

  def index
  end

  def sitemap
	  @courses = Course.all
	  @tutorials = Tutorial.all
	  @books = Book.all
  end

end
