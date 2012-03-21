class Course < ActiveRecord::Base
	validates_presence_of :title
	validates_presence_of :url
	validates_format_of :url, :with => URI::regexp(%w(http https)), :message => 'needs to begin with http:// or https://'

	belongs_to :user
	has_many :reviews
end
