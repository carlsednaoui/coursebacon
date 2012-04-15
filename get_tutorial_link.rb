@tutorials = Tutorial.all
puts "Original tutorials count: " + @tutorials.count.to_s

@new_tutorials = Array.new
@tutorials.each do |tutorial|
	unless UrlData.find_by_tutorial_id(tutorial.id).present?
		@new_tutorials.push tutorial.id
	end
end

puts "Tutorials count: " + @new_tutorials.count.to_s

@new_tutorials.each do |tutorial|
	puts "Currently working on :" + tutorial.to_s
	
	url = "#{Tutorial.find_by_id(tutorial).url}"
	
	@url_data = UrlData.new
	@url_data.tutorial_id = tutorial
	@query = "http://ajax.googleapis.com/ajax/services/search/web?v=1.0&q=link:"

	#Get Google Backlinks
	uri = URI("#{@query + url}")
	result = Net::HTTP.get(uri)
	parsed_json = ActiveSupport::JSON.decode(result)

	puts "Start of Google Link Analysis"
	@url_data.google_backlinks = parsed_json["responseData"]["cursor"]["estimatedResultCount"]
	puts "Response Status: " + parsed_json["responseStatus"].to_s
	puts "End of Google Link Analysis"

	#Get SEOMoz Backlinks & Data
	client = Linkscape::Client.new(:accessID => "member-e2f921a0d2", :secret => "5d5f04f85b6851260dbe25f788ac899a")
	response = client.urlMetrics("#{url}", :cols => :all)

	#If a URL has more than 1000 seomoz backlinks, set the number of backlinks to 1000 - this is done in order to normalize the data
	puts "Start SEOMoz Details"
	if response.data[:external_links] > 1000
		@url_data.moz_backlinks = 1000
	else
		@url_data.moz_backlinks = response.data[:external_links]
	end
	@url_data.mozrank = response.data[:mozrank]
	puts "End SEOMoz Details"

	begin
		@url_data.save!
	rescue => error
		puts "*****ERROR!"
		puts error
	end
	sleep 10
end
