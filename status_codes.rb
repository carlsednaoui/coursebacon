#TODO Deal with 404 pages

require 'net/http'
require 'uri'

books = Book.all
courses = Course.all
tutorials = Tutorial.all
course = Course.find_by_id(61) #https

#*args takes any amount of arguments. we then loop through each of the arguemnts and if the argument is an array we run .each else we run it normally
def status(*args)
  args.each do |item|
    item.class.to_s == "Array" ? item.each { |i| check_url(i) } : check_url(item) 
  end
end

def check_url(item)
  uri = URI("#{item.url}")
  uri.scheme == "https" ? get_https(item) : get_http(item)
end

def get_https(item)
  uri = URI("#{item.url}")
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true if uri.scheme == 'https'

  http.start do |h|
    res = h.request Net::HTTP::Get.new(uri.request_uri)
    unless res.code.eql? "200"
      puts "Title: #{item.title} \n URL: #{item.url} \n Resolution Code: #{res.code} \n New URL: #{res.header.to_hash["location"].first} \n\n"
    end
  end
end

def get_http(item)
  uri = URI("#{item.url}")
  res = Net::HTTP.get_response(uri)
  unless res.code.eql? "200"
    puts "Title: #{item.title} \n URL: #{item.url} \n Resolution Code: #{res.code} \n New URL: #{res.header.to_hash["location"].first} \n\n"
  end
end

status(courses, books, tutorials)
