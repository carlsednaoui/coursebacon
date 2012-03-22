class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  before_filter :ensure_domain

  APP_DOMAIN = 'www.roompatible.com'
  def ensure_domain
	  if request.env['HTTP_HOST'].eql? "roompatible.com"
		  redirect_to "http://#{APP_DOMAIN}", :status => 301
	  end
  end


 private

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
