@courses = Course.all
puts "Original courses count: " + @courses.count.to_s

@new_courses = Array.new
@courses.each do |course|
	unless UrlData.find_by_course_id(course.id).present?
		@new_courses.push course.id
	end
end

puts "Courses count: " + @new_courses.count.to_s

@new_courses.each do |course|
	puts "Currently working on :" + course.to_s
	
	url = "#{Course.find_by_id(course).url}"
	
	@url_data = UrlData.new
	@url_data.course_id = course
	@query = "http://ajax.googleapis.com/ajax/services/search/web?v=1.0&q=site:"

	#Get Google Backlinks
	uri = URI("#{@query + url}")
	result = Net::HTTP.get(uri)
	parsed_json = ActiveSupport::JSON.decode(result)

	puts "Start of Google Link Analysis"
	@url_data.google_backlinks = parsed_json["responseData"]["cursor"]["estimatedResultCount"].to_s
	puts "Response Status: " + parsed_json["responseStatus"].to_s
	puts "End of Google Link Analysis"

	#Get SEOMoz Backlinks & Data
	client = Linkscape::Client.new(:accessID => "member-e2f921a0d2", :secret => "5d5f04f85b6851260dbe25f788ac899a")
	response = client.urlMetrics("#{url}", :cols => :all)

	puts "Start SEOMoz Details"
	@url_data.moz_backlinks = response.data[:external_links].to_s
	@url_data.mozrank = response.data[:mozrank].to_s
	puts "End SEOMoz Details"

	begin
		@url_data.save!
	rescue => error
		puts "*****ERROR!"
		puts error
	end
	sleep 10
end
