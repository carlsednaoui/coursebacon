books = Book.all
courses = Course.all
tutorials = Tutorial.all

def identify_item(*args)
	args.each do |item|
		item.each do |a|
			if a.class.to_s == "Book"
				unless UrlData.find_by_book_id(a.id).present?
					book(a)
				end
			elsif a.class.to_s == "Course"
				unless UrlData.find_by_course_id(a.id).present?
					course(a)
				end
			elsif a.class.to_s == "Tutorial"
				unless UrlData.find_by_tutorial_id(a.id).present?
					tutorial(a)
				end
			else
				puts "Houston, we have an error!"
				puts a
			end
		end
	end
end

def book(book)
	url_data = UrlData.new
	url_data.book_id = book.id
	url_data.google_backlinks = get_google_backlinks(book.url)
	url_data.moz_backlinks = get_seomoz_backlinks(book.url)
	begin
		url_data.save!
	rescue => error
		puts "*****ERROR!"
		puts error
	end
end

def course(course)
	url_data = UrlData.new
	url_data.course_id = course.id
	url_data.google_backlinks = get_google_backlinks(course.url)
	url_data.moz_backlinks = get_seomoz_backlinks(course.url)
	begin
		url_data.save!
	rescue => error
		puts "*****ERROR!"
		puts error
	end	
end

def tutorial(tutorial)
	url_data = UrlData.new
	url_data.tutorial_id = tutorial.id
	url_data.google_backlinks = get_google_backlinks(tutorial.url)
	url_data.moz_backlinks = get_seomoz_backlinks(tutorial.url)
	begin
		url_data.save!
	rescue => error
		puts "*****ERROR!"
		puts error
	end	
end

def get_google_backlinks(url)
	google_query = "http://ajax.googleapis.com/ajax/services/search/web?v=1.0&q=link:"
	uri = URI("#{google_query + url}")
	result = Net::HTTP.get(uri)
	parsed_json = ActiveSupport::JSON.decode(result)
	total_google_backlinks = parsed_json["responseData"]["cursor"]["estimatedResultCount"]
	return total_google_backlinks
end

def get_seomoz_backlinks(url)
	client = Linkscape::Client.new(:accessID => "member-e2f921a0d2", :secret => "5d5f04f85b6851260dbe25f788ac899a")
	response = client.urlMetrics("#{url}", :cols => :all)
	total_seomoz_backlinks = response.data[:external_links]
	sleep 10
	return total_seomoz_backlinks
end

identify_item(courses, books, tutorials)