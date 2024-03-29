desc "This task is called by the Heroku scheduler add-on"
task :get_tweets => :environment do

	puts "Updating feed..."

	def get_course_tweets
		@courses = Course.all
		@courses.each do |course|
			url = course.url
			tweets = Twitter.search(url, {:rpp => 100, :recent => true, :show_user => true})
			tweets.each do |tweet_info|
				unless Tweet.find_by_tweet_id(tweet_info.id).present?
					tweet = Tweet.new
					tweet.course_id = course.id
					tweet.tweet_id = tweet_info.id
					tweet.tweet_text = tweet_info.text
					tweet.from_user = tweet_info.from_user
					begin
						tweet.save!
					rescue => error
						puts error
					end
				end
			end
		end
	end

	def get_book_tweets
		@books = Book.all
		@books.each do |book|
			url = book.url
			tweets = Twitter.search(url, {:rpp => 100, :recent => true, :show_user => true})
			tweets.each do |tweet_info|
				unless Tweet.find_by_tweet_id(tweet_info.id).present?
					tweet = Tweet.new
					tweet.book_id = book.id
					tweet.tweet_id = tweet_info.id
					tweet.tweet_text = tweet_info.text
					tweet.from_user = tweet_info.from_user
					begin
						tweet.save!
					rescue => error
						puts error
					end
				end
			end
		end
	end

	def get_tutorial_tweets
		@tutorials = Tutorial.all
		@tutorials.each do |tutorial|
			url = tutorial.url
			tweets = Twitter.search(url, {:rpp => 100, :recent => true, :show_user => true})
			tweets.each do |tweet_info|
				unless Tweet.find_by_tweet_id(tweet_info.id).present?
					tweet = Tweet.new
					tweet.tutorial_id = tutorial.id
					tweet.tweet_id = tweet_info.id
					tweet.tweet_text = tweet_info.text
					tweet.from_user = tweet_info.from_user
					begin
						tweet.save!
					rescue => error
						puts error
					end
				end
			end
		end
	end

	get_course_tweets
	get_book_tweets
	get_tutorial_tweets

	puts "done."
end
