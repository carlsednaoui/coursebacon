class ResourceReviewsController < ApplicationController

  before_filter :require_current_user

  # GET /resource_reviews
  # GET /resource_reviews.json
  def index
    @resource_reviews = ResourceReview.find_all_by_user_id(current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @resource_reviews }
    end
  end

  # GET /resource_reviews/1
  # GET /resource_reviews/1.json
  def show
    @resource_review = ResourceReview.find(params[:id])
    @resource = Resource.find_by_id(@resource_review.resource_id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @resource_review }
    end
  end

  # GET /resource_reviews/new
  # GET /resource_reviews/new.json
  def new
    @resource_review = ResourceReview.new
    @resource_review.user_id = current_user.id
    @resource_review.resource_id = params[:resource_id]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @resource_review }
    end
  end

  # GET /resource_reviews/1/edit
  def edit
    @resource_review = ResourceReview.find(params[:id])
  end

  # POST /resource_reviews
  # POST /resource_reviews.json
  def create
    @resource_review = ResourceReview.new(params[:resource_review])
    @resource_review.user_id = current_user.id
    @resource_review.resource_id = params[:resource_id]

    respond_to do |format|
      if @resource_review.save
        format.html { redirect_to @resource_review, :notice => 'Resource review was successfully created.' }
        format.json { render :json => @resource_review, :status => :created, :location => @resource_review }
      else
        format.html { render :action => "new" }
        format.json { render :json => @resource_review.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /resource_reviews/1
  # PUT /resource_reviews/1.json
  def update
    @resource_review = ResourceReview.find(params[:id])

    respond_to do |format|
      if @resource_review.update_attributes(params[:resource_review])
        format.html { redirect_to @resource_review, :notice => 'Resource review was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @resource_review.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /resource_reviews/1
  # DELETE /resource_reviews/1.json
  def destroy
    @resource_review = ResourceReview.find(params[:id])
    @resource_review.destroy

    respond_to do |format|
      format.html { redirect_to resource_reviews_url }
      format.json { head :ok }
    end
  end
end