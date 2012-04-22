books = Book.all
courses = Course.all
tutorials = Tutorial.all

def get_links(*args)
  args.each do |item|
    puts item.class.to_s == "Array" ? identify_items(item) : "Please pass in an array" 
  end
end

def identify_items(item)
  item.each do |a|
    if a.class.to_s == "Book"
      book(a)
    elsif a.class.to_s == "Course"
      course(a)
    elsif a.class.to_s == "Tutorial"
      tutorial(a)
    else
      puts "Houston, we have an error!"
      puts a
    end
  end
end

def book(book)
  unless UrlData.find_by_book_id(book.id).present?
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
end

def course(course)
  unless UrlData.find_by_course_id(course.id).present?
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
end

def tutorial(tutorial)
  unless UrlData.find_by_tutorial_id(tutorial.id).present?
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

get_links(courses, books, tutorials)
