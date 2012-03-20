class DashboardController < ApplicationController
	before_filter :require_current_user
  	def index
		@current_user_courses = Course.find_all_by_user_id(current_user.id).reverse
	end
end
