module ApplicationHelper
	def sortable(column, title = nil)
		title ||= column.titleize
		css_class = column == sort_column ? "current #{sort_direction}" : nil
		direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
		link_to title, {:sort => column, :direction => direction}, {:class => css_class}
	end


	# To finish and polish + implement
	def popularity(id, item)
	  if item == "course"
	    tweets = Tweet.find_all_by_course_id(id).count
	    if UrlData.find_by_course_id(id).nil?
	      links = 0
	    else
	      links = UrlData.find_by_course_id(id).moz_backlinks.to_f + UrlData.find_by_course_id(id).google_backlinks.to_f
	    end
	  elsif item == "tutorial"
	    tweets = Tweet.find_all_by_tutorial_id(id).count
	    if UrlData.find_by_tutorial_id(id).nil?
	      links = 0
	    else
	      links = UrlData.find_by_tutorial_id(id).moz_backlinks.to_f + UrlData.find_by_tutorial_id(id).google_backlinks.to_f
	    end
	  elsif item == "book"
	    tweets = Tweet.find_all_by_book_id(id).count
	    if UrlData.find_by_book_id(id).nil?
	      links = 0
	    else
	      links = UrlData.find_by_book_id(id).moz_backlinks.to_f + UrlData.find_by_book_id(id).google_backlinks.to_f
	    end

	    popularity = tweets + links
	    popularity = popularity.to_i
	    return popularity
	  end
	end

	def popular_resource(resource_id) 
		tweets = Tweet.find_all_by_resource_id(resource_id).count
		if UrlData.find_by_resource_id(resource_id).nil?
			links = 0
		else
			links = UrlData.find_by_resource_id(resource_id).moz_backlinks.to_f + UrlData.find_by_resource_id(resource_id).google_backlinks.to_f
		end
		resource_popularity = tweets + links
		resource_popularity = resource_popularity.to_i
		return resource_popularity
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

	#all_backlinks method (below) is currently not used. Integrate this when I want to have weighted averages based on URL backlinks.
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
