class TutorialReviewsController < ApplicationController

	before_filter :require_current_user

	# GET /tutorial_reviews
	# GET /tutorial_reviews.json
	def index
		@tutorial_reviews = TutorialReview.find_all_by_user_id(current_user.id)

		respond_to do |format|
			format.html # index.html.erb
			format.json { render :json => @tutorial_reviews }
		end
	end

	# GET /tutorial_reviews/1
	# GET /tutorial_reviews/1.json
	def show
		@tutorial_review = TutorialReview.find(params[:id])

		respond_to do |format|
			format.html # show.html.erb
			format.json { render :json => @tutorial_review }
		end
	end

	# GET /tutorial_reviews/new
	# GET /tutorial_reviews/new.json
	def new
		@tutorial_review = TutorialReview.new
		@tutorial_review.user_id = current_user.id
		@tutorial_review.tutorial_id = params[:tutorial_id]

		respond_to do |format|
			format.html # new.html.erb
			format.json { render :json => @tutorial_review }
		end
	end

	# GET /tutorial_reviews/1/edit
	def edit
		@tutorial_review = TutorialReview.find(params[:id])
	end

	# POST /tutorial_reviews
	# POST /tutorial_reviews.json
	def create
		@tutorial_review = TutorialReview.new(params[:tutorial_review])
		@tutorial_review.user_id = current_user.id
		@tutorial_review.tutorial_id = params[:tutorial_id]

		respond_to do |format|
			if @tutorial_review.save
				format.html { redirect_to @tutorial_review, :notice => 'Tutorial review was successfully created.' }
				format.json { render :json => @tutorial_review, :status => :created, :location => @tutorial_review }
			else
				format.html { render :action => "new" }
				format.json { render :json => @tutorial_review.errors, :status => :unprocessable_entity }
			end
		end
	end

	# PUT /tutorial_reviews/1
	# PUT /tutorial_reviews/1.json
	def update
		@tutorial_review = TutorialReview.find(params[:id])

		respond_to do |format|
			if @tutorial_review.update_attributes(params[:tutorial_review])
				format.html { redirect_to @tutorial_review, :notice => 'Tutorial review was successfully updated.' }
				format.json { head :ok }
			else
				format.html { render :action => "edit" }
				format.json { render :json => @tutorial_review.errors, :status => :unprocessable_entity }
			end
		end
	end

	# DELETE /tutorial_reviews/1
	# DELETE /tutorial_reviews/1.json
	def destroy
		@tutorial_review = TutorialReview.find(params[:id])
		@tutorial_review.destroy

		respond_to do |format|
			format.html { redirect_to tutorial_reviews_url }
			format.json { head :ok }
		end
	end
end
