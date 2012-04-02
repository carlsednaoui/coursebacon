xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do

	xml.url do
		xml.loc "http://www.coursebacon.com"
		xml.priority 1.0
	end

	@courses.each do |course|
		xml.url do
			xml.loc course_url(course)
			xml.lastmod course.updated_at.to_date
			xml.priority 0.9
		end
	end


	@tutorials.each do |tutorial|
		xml.url do
			xml.loc tutorial_url(tutorial)
			xml.lastmod tutorial.updated_at.to_date
			xml.priority 0.9
		end
	end


	@books.each do |book|
		xml.url do
			xml.loc book_url(book)
			xml.lastmod book.updated_at.to_date
			xml.priority 0.9
		end
	end

end
