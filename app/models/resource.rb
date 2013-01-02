class Resource < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :url
  validates_presence_of :description
  validates_presence_of :type

  validates_format_of :url, :with => URI::regexp(%w(http https)), :message => 'needs to begin with http:// or https://'

  validates_uniqueness_of :url

  belongs_to :user
  has_and_belongs_to_many :curriculums

  #to_param puts SEO friendly URLs
  def to_param
    "#{id}-#{title.parameterize}"
  end
end
