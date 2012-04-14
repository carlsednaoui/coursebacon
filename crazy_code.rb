# ===> SEO MOZ STUFF BELOW <====
#https://github.com/seomoz/linkscape-gem
#http://apiwiki.seomoz.org/w/page/13991133/SEOmoz%20API%20Home

URL = "http://addyosmani.com/resources/essentialjsdesignpatterns/book/"

client = Linkscape::Client.new(:accessID => "member-e2f921a0d2", :secret => "5d5f04f85b6851260dbe25f788ac899a")
response = client.urlMetrics("#{URL}", :cols => :all)
puts response.data[:url]
puts response.data[:external_links]
puts response.data[:page_authority]
puts response.data[:mozrank]
# ===> SEO MOZ STUFF ABOVE <====



# ===> GOOGLE API STUFF BELOW <====
require 'net/http'

@url = "http://www.codecademy.com/courses/html-one-o-one"
@query = "http://ajax.googleapis.com/ajax/services/search/web?v=1.0&q=site:"

uri = URI("#{@query + @url}")
	  result = Net::HTTP.get(uri)

	  parsed_json = ActiveSupport::JSON.decode(result)

	  puts @url
	  puts parsed_json["responseData"]["cursor"]["estimatedResultCount"]
	  puts parsed_json["responseStatus"]

	  #http://stackoverflow.com/questions/5410682/parsing-a-json-string-in-ruby
	  ###http://stackoverflow.com/questions/1826727/how-do-i-parse-json-with-ruby-on-rails
	  ###http://stackoverflow.com/questions/6817572/count-number-of-backlinks-to-a-domain
	  ###http://ajax.googleapis.com/ajax/services/search/web?v=1.0&q=site:test.com
	  ###http://ruby-doc.org/stdlib-1.9.3/libdoc/net/http/rdoc/Net/HTTP.html
# ===> GOOGLE API STUFF BELOW <====
