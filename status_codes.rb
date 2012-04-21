require 'net/http'
require 'uri'

books = Book.all
courses = Course.all
tutorials = Tutorial.all
course = Course.find_by_id(61) #https


#Crazy ass ruby code by Jeff
def super_optimized_get_link_status(*args)
  args.each do |item|
    item.class.to_s == "Array" ? item.each { |i| status(i) } : status(item) 
  end
end
#End of madness


def get_link_status(item)
  if item.class.to_s == "Array"
    item.each { |item| status(item) }
  elsif item.class.to_s == "Course" || item.class.to_s == "Book" || item.class.to_s == "Tutorial"
    status(item)
  else
    puts "What are you doing? You need to give me an array or a course, book or tutorial."
  end
end


def status(item)
  uri = URI("#{item.url}")

  if uri.scheme == 'https'
    get_https(item)
  elsif uri.scheme == 'http'
    get_http(item)
  else
    puts "***WTF***"
  end
  #uri.scheme == "https" ? get_https(item) : get_http(item) <=== Carl learning to copy Jeff
end


def get_https(item)
  uri = URI("#{item.url}")
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true if uri.scheme == 'https'

  http.start do |h|
    res = h.request Net::HTTP::Get.new(uri.request_uri)
    unless res.code.eql? "200"
      puts item.title
      puts item.url
      puts res.code
      puts res.header.to_hash["location"].first
    end
  end
end


def get_http(item)
  uri = URI("#{item.url}")
  res = Net::HTTP.get_response(uri)
  unless res.code.eql? "200"
    puts item.title
    puts item.url
    puts res.code
    puts res.header.to_hash["location"].first
  end
end

#get_link_status(books)
#get_link_status(tutorials)
#get_link_status(courses)
super_optimized_get_link_status(courses, books, tutorials)
