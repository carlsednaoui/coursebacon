@course = Course.all

@course.each do |course|
	url = course.url
		tweets = Twitter.search(url, {:rpp => 3, :recent => true, :show_user => true})
		tweets.each do |tweet|
			puts tweet.text
			puts tweet.from_user
			puts tweet.id
			puts "*******"
	end
	break
end


<h2>People talking about this course</h2>
<% tweets = Twitter.search(@course.url, {:rpp => 3, :recent => true, :show_user => true}) %>
<% tweets.each do |tweet| %>
        <%= link_to image_tag("http://api.twitter.com/1/users/profile_image/#{tweet.from_user}.mini"), "http://www.twitter.com/#{tweet.from_user}/status/#{tweet.id}", :target => "_blank" %>
	<% end %>
