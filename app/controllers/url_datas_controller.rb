class UrlDatasController < ApplicationController
def index
	@data = UrlData.all

	@backlinks = Array.new
	@data.each do |details|
		@backlinks.push details.google_backlinks
		@backlinks.push details.moz_backlinks
	end

	@backlinks = @backlinks.compact.reject { |s| s.blank? }

	@backlinks = @backlinks.inject(:+)
end
end
