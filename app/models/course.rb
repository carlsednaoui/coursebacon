class Course < ActiveRecord::Base
	validates_presence_of :title
	validates_presence_of :url
	validates_format_of :url, :with => URI::regexp(%w(http https)), :message => 'needs to begin with http:// or https://'

	validates_uniqueness_of :url

	belongs_to :user
	has_many :reviews


	def to_param
		  "#{id}-#{title.downcase.gsub(/[^a-zA-Z0-9]+/, '-').gsub(/-{2,}/, '-').gsub(/^-|-$/, '')}"
	end
end
