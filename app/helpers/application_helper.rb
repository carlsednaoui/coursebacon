module ApplicationHelper
	def sortable(column, title = nil)
		title ||= column.titleize
		css_class = column == sort_column ? "current #{sort_direction}" : nil
		direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
		link_to title, {:sort => column, :direction => direction}, {:class => css_class}
	end

	def popular_course(course_id) 
		tweets = Tweet.find_all_by_course_id(course_id).count
		if UrlData.find_by_course_id(course_id).nil?
			links = 0
		else
			links = UrlData.find_by_course_id(course_id).moz_backlinks.to_f + UrlData.find_by_course_id(course_id).google_backlinks.to_f
		end
		course_popularity = tweets + links
		course_popularity = course_popularity.to_i
		return course_popularity
	end

	def popular_tutorial(tutorial_id)
		tweets = Tweet.find_all_by_tutorial_id(tutorial_id).count
		if UrlData.find_by_tutorial_id(tutorial_id).nil?
			links = 0
		else   
			links = UrlData.find_by_tutorial_id(tutorial_id).moz_backlinks.to_f + UrlData.find_by_tutorial_id(tutorial_id).google_backlinks.to_f
		end
		course_popularity = tweets + links
		course_popularity = course_popularity.to_i
		return course_popularity
	end

	def popular_book(book_id)
		tweets = Tweet.find_all_by_book_id(book_id).count                
		if UrlData.find_by_book_id(book_id).nil?
			links = 0
		else   
			links = UrlData.find_by_book_id(book_id).moz_backlinks.to_f + UrlData.find_by_book_id(book_id).google_backlinks.to_f
		end
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
