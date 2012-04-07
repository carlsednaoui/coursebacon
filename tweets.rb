url = Course.find_by_title("CS373 - PROGRAMMING A ROBOTIC CAR").url
output = Twitter.search(url, :rpp => 100)

output.each do |tweet|
	puts tweet.text
	puts "*****"
end
