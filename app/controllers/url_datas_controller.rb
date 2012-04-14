class UrlDatasController < ApplicationController
def index
	@data = UrlData.all
end
end
