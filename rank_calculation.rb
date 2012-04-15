@array = Array.new

@url_data = UrlData.all
@url_data.each do |url|
	@array.push url.google_backlinks
	@array.push url.moz_backlinks
end

@array = @array.compact.reject { |s| s.blank? }

@array = @array.inject(:+)

puts @array
