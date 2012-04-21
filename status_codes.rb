require 'net/http'
require 'uri'

courses = Course.all
books = Book.all
tutorials = Tutorial.all

course = Course.find_by_id(61) #https

def all_courses(courses)
	courses.each do |course|
		if course.url.starts_with?("https://")
			puts course.title
			puts course.url
			puts "fuck an https"
			next
		else
			begin
				uri = URI.parse("#{course.url}")
				res = Net::HTTP.get_response(uri)
				unless res.code.eql? "200" || "301"
					puts course.title
					puts course.url
					puts res.code
					puts res.header.to_hash["location"].first
				end
			rescue => error
				puts "****ERROR!"
				puts error
			end
		end
	end
end

def one_course(course)
	if course.url.starts_with?("https://")
		puts course.title
		puts course.url
		puts "fuck an https"
	else
		puts course.title
		puts course.url
		begin
			uri = URI.parse("#{course.url}")
			res = Net::HTTP.get_response(uri)
			puts res.code
			puts res.header.to_hash["location"].first
		rescue => error
			puts "****ERROR!"
			puts error
		end
	end
end

#all_courses(books)
#all_courses(tutorials)
#all_courses(courses)
one_course(course)
