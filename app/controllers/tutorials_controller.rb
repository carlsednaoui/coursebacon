class TutorialsController < ApplicationController

	before_filter :require_current_user, :except => [:index, :show]
	before_filter :require_tutorial_belongs_to_current_user, :only => [:edit, :update, :destroy]

	helper_method :sort_column, :sort_direction



	# GET /tutorials
	# GET /tutorials.json
	def index
		@tutorials = Tutorial.order(sort_column + " " + sort_direction).page(params[:page]).per(10)

		respond_to do |format|
			format.html # index.html.erb
			format.json { render :json => @tutorials }
		end
	end

	# GET /tutorials/1
	# GET /tutorials/1.json
	def show
		@tutorial = Tutorial.find(params[:id])
		@tutorial_reviews = TutorialReview.find_all_by_tutorial_id(@tutorial.id).reverse

		@tweets = Tweet.find_all_by_tutorial_id(@tutorial.id)

		respond_to do |format|
			format.html # show.html.erb
			format.json { render :json => @tutorial }
		end
	end

	# GET /tutorials/new
	# GET /tutorials/new.json
	def new
		@tutorial = Tutorial.new

		respond_to do |format|
			format.html # new.html.erb
			format.json { render :json => @tutorial }
		end
	end

	# GET /tutorials/1/edit
	def edit
		@tutorial = Tutorial.find(params[:id])
	end

	# POST /tutorials
	# POST /tutorials.json
	def create
		@tutorial = Tutorial.new(params[:tutorial])

		@tutorial.user = current_user

		respond_to do |format|
			if @tutorial.save
				format.html { redirect_to @tutorial, :notice => 'Tutorial was successfully created.' }
				format.json { render :json => @tutorial, :status => :created, :location => @tutorial }
			else
				format.html { render :action => "new" }
				format.json { render :json => @tutorial.errors, :status => :unprocessable_entity }
			end
		end
	end

	# PUT /tutorials/1
	# PUT /tutorials/1.json
	def update
		@tutorial = Tutorial.find(params[:id])

		respond_to do |format|
			if @tutorial.update_attributes(params[:tutorial])
				format.html { redirect_to @tutorial, :notice => 'Tutorial was successfully updated.' }
				format.json { head :ok }
			else
				format.html { render :action => "edit" }
				format.json { render :json => @tutorial.errors, :status => :unprocessable_entity }
			end
		end
	end

	# DELETE /tutorials/1
	# DELETE /tutorials/1.json
	def destroy
		@tutorial = Tutorial.find(params[:id])
		@tutorial.destroy

		respond_to do |format|
			format.html { redirect_to tutorials_url }
			format.json { head :ok }
		end
	end

	private

	def require_tutorial_belongs_to_current_user
		@tutorial = current_user.tutorials.find(params[:id])
	end

	def sort_column
		Tutorial.column_names.include?(params[:sort]) ? params[:sort] : "created_at"
	end

	def sort_direction
		%w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
	end

end
