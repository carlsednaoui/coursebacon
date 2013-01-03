class ResourcesController < ApplicationController

  # before_filter :require_current_user, :except => [:index, :show]
  # before_filter :require_resource_belongs_to_current_user, :only => [:edit, :update, :destroy]

  helper_method :sort_column, :sort_direction

  def index
    @resources = Resource.order(sort_column + " " + sort_direction).page(params[:page]).per(10)

    # respond_to do |format|
    #   format.js
    #   format.html # index.html.erb
    #   format.json { render :json => @resources }
    # end
  end

  # GET /resources/1
  # GET /resources/1.json
  def show
    @resource = Resource.find(params[:id])
    @resource_reviews = ResourceReview.find_all_by_resource_id(@resource.id).reverse

    #@tweets = Tweet.find_all_by_resource_id(@resource.id)

    @tweets = Tweet.where("tweets.updated_at <= (SELECT MIN(t.updated_at) FROM tweets AS t WHERE t.from_user=tweets.from_user)").order("tweets.tweet_id desc").find_all_by_resource_id(@resource.id).first(108)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @resource }
    end
  end

  # GET /resources/new
  # GET /resources/new.json
  def new
    @resource = Resource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @resource }
    end
  end

  # GET /resources/1/edit
  def edit
    @resource = Resource.find(params[:id])
  end

  # POST /resources
  # POST /resources.json
  def create
    @resource = Resource.new(params[:resource])
    @resource.user = current_user

    respond_to do |format|
      if @resource.save
        format.html { redirect_to @resource, :notice => 'Resource was successfully created.' }
        format.json { render :json => @resource, :status => :created, :location => @resource }
      else
        format.html { render :action => "new" }
        format.json { render :json => @resource.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /resources/1
  # PUT /resources/1.json
  def update
    @resource = Resource.find(params[:id])

    respond_to do |format|
      if @resource.update_attributes(params[:resource])
        format.html { redirect_to @resource, :notice => 'Resource was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @resource.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /resources/1
  # DELETE /resources/1.json
  def destroy
    @resource = Resource.find(params[:id])
    @resource.destroy

    respond_to do |format|
      format.html { redirect_to resources_url }
      format.json { head :ok }
    end
  end

  private

  def require_resource_belongs_to_current_user
    @resource = current_user.resources.find(params[:id])
  end

  def sort_column
    Resource.column_names.include?(params[:sort]) ? params[:sort] : "created_at"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
  end
end
