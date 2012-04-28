require 'nokogiri'
require 'open-uri'
require 'uri'

all_urls = ["http://juixe.com/techknow/index.php/2007/01/22/ruby-class-tutorial/", "http://juixe.com/techknow/index.php/2006/06/15/mixins-in-ruby/", "http://tldp.org/HOWTO/Bash-Prompt-HOWTO/index.html", "http://coding.smashingmagazine.com/2012/04/11/css-sprites-revisited/", "http://javascriptplayground.com/blog/2012/04/a-jquery-plugin-with-grunt-qunit", "http://rogerdudler.github.com/git-guide/", "http://xato.net/passwords/how-i-collect-passwords", "http://javascriptplayground.com/blog/2012/04/beginning-node-js-express-tutorial", "http://net.tutsplus.com/tutorials/tools-and-tips/sublime-text-2-tips-and-tricks/", "http://postgresguide.com/", "http://www.codeproject.com/Articles/345888/How-to-write-a-simple-interpreter-in-JavaScript", "http://javascriptplayground.com/blog/2012/04/backbone-js-tutorial-1", "http://needforair.com/blog/2012/04/22/dns-redirections/", "http://arcturo.github.com/library/coffeescript/", "http://vim-adventures.com/", "http://www-cs-students.stanford.edu/~amitp/game-programming/polygon-map-generation/", "http://www.twilio.com/blog/2012/04/get-started-with-twilio-sms-receiving-incoming-sms-quickstart.html", "http://guides.railsgirls.com/"]


def get_site_data(url)
  doc = Nokogiri::HTML(open("#{url}"))
  puts "url: " + url
  puts "title: " + doc.css("title").text
  puts "description: " + doc.xpath("//meta[@name='description']/@content").to_s
  print "description a la carl: " 
  puts doc.css("meta[name='description']").first['content']
  puts "site: " + URI(url).host
  puts ""
end


all_urls.each do |url|
  get_site_data(url)
  break
end
