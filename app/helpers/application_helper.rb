module ApplicationHelper
	def sortable(column, title = nil)
		title ||= column.titleize
		css_class = column == sort_column ? "current #{sort_direction}" : nil
		direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
		link_to title, {:sort => column, :direction => direction}, {:class => css_class}
	end

	def popular_course(course_id, backlinks = @backlinks) 
		tweets = Tweet.find_all_by_course_id(course_id).count
		links = UrlData.find_by_course_id(course_id).moz_backlinks.to_f + UrlData.find_by_course_id(course_id).google_backlinks.to_f
		course_popularity = tweets + links
		course_popularity = course_popularity.to_i
		return course_popularity
	end

	def all_backlinks
		@data = UrlData.all

		@backlinks = Array.new
		@data.each do |details|
			@backlinks.push details.google_backlinks
			@backlinks.push details.moz_backlinks
		end

		@backlinks = @backlinks.compact.reject { |s| s.blank? }

		@backlinks = @backlinks.inject(:+)
		return @backlinks
	end
end
