class ResourcesController < ApplicationController

  # before_filter :require_current_user, :except => [:index, :show]
  # before_filter :require_resource_belongs_to_current_user, :only => [:edit, :update, :destroy]

  helper_method :sort_column, :sort_direction

  autocomplete :tag, :name, :class_name => 'ActsAsTaggableOn::Tag'

  def index
    if params[:tag]
      @resources = Resource.tagged_with(params[:tag]).order(sort_column + " " + sort_direction).page(params[:page]).per(10)
    else
      @resources = Resource.order(sort_column + " " + sort_direction).page(params[:page]).per(10)    
    end
  end

  def show
    @resource = Resource.find(params[:id])
    @resource_reviews = ResourceReview.find_all_by_resource_id(@resource.id).reverse

    #@tweets = Tweet.find_all_by_resource_id(@resource.id)

    @tweets = Tweet.where("tweets.updated_at <= (SELECT MIN(t.updated_at) FROM tweets AS t WHERE t.from_user=tweets.from_user)").order("tweets.tweet_id desc").find_all_by_resource_id(@resource.id).first(108)
  end

  def new
    @resource = Resource.new
    @resources_type = Resource.resources_type
  end

  def edit
    @resource = Resource.find(params[:id])
    @resources_type = Resource.resources_type
  end

  def create
    @resource = Resource.new(params[:resource])
    @resource.user = current_user
    @resources_type = Resource.resources_type

    if @resource.save
      redirect_to @resource, :notice => 'Resource was successfully created.'
    else
      render :action => "new"
    end
  end

  def update
    @resource = Resource.find(params[:id])
    @resources_type = Resource.resources_type

    if @resource.update_attributes(params[:resource])
      redirect_to @resource, :notice => 'Resource was successfully updated.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @resource = Resource.find(params[:id])
    @resource.destroy

    redirect_to resources_url
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
