class CoursesController < ApplicationController

	before_filter :require_current_user, :except => [:index, :show]
	before_filter :require_course_belongs_to_current_user, :only => [:edit, :update, :destroy]

	helper_method :sort_column, :sort_direction

	# GET /courses
	# GET /courses.json
	def index
		@courses = Course.order(sort_column + " " + sort_direction).page(params[:page]).per(10)

		respond_to do |format|
			format.js
			format.html # index.html.erb
			format.json { render :json => @courses }
		end
	end

	# GET /courses/1
	# GET /courses/1.json
	def show
		@course = Course.find(params[:id])
		@course_reviews = CourseReview.find_all_by_course_id(@course.id).reverse
		
		#@tweets = Tweet.find_all_by_course_id(@course.id)
		
		# Selects the last "x" tweets for a specific course, unique by user, and only that user's last tweet is displayer
		@tweets = Tweet.where("tweets.updated_at <= (SELECT MIN(t.updated_at) FROM tweets AS t WHERE t.from_user=tweets.from_user)").order("tweets.tweet_id desc").find_all_by_course_id(@course.id).first(108)
		
		respond_to do |format|
			format.html # show.html.erb
			format.json { render :json => @course }
		end
	end

	# GET /courses/new
	# GET /courses/new.json
	def new
		@course = Course.new

		respond_to do |format|
			format.html # new.html.erb
			format.json { render :json => @course }
		end
	end

	# GET /courses/1/edit
	def edit
		@course = Course.find(params[:id])
	end

	# POST /courses
	# POST /courses.json
	def create
		@course = Course.new(params[:course])

		@course.user = current_user

		respond_to do |format|
			if @course.save
				format.html { redirect_to @course, :notice => 'Course was successfully created.' }
				format.json { render :json => @course, :status => :created, :location => @course }
			else
				format.html { render :action => "new" }
				format.json { render :json => @course.errors, :status => :unprocessable_entity }
			end
		end
	end

	# PUT /courses/1
	# PUT /courses/1.json
	def update
		@course = Course.find(params[:id])

		respond_to do |format|
			if @course.update_attributes(params[:course])
				format.html { redirect_to @course, :notice => 'Course was successfully updated.' }
				format.json { head :ok }
			else
				format.html { render :action => "edit" }
				format.json { render :json => @course.errors, :status => :unprocessable_entity }
			end
		end
	end

	# DELETE /courses/1
	# DELETE /courses/1.json
	def destroy
		@course = Course.find(params[:id])
		@course.destroy

		respond_to do |format|
			format.html { redirect_to courses_url }
			format.json { head :ok }
		end
	end

	private

	def require_course_belongs_to_current_user
		@course = current_user.courses.find(params[:id])
	end

	def sort_column
		Course.column_names.include?(params[:sort]) ? params[:sort] : "created_at"
	end

	def sort_direction
		%w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
	end
end
